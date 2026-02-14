FROM debian:latest

LABEL \
    description="Don't Starve Together dedicated server" \
    source="https://github.com/mescalantea/dst-dedicated-server"

# Create specific user to run DST server
RUN useradd -ms /bin/bash/ dst
WORKDIR /home/dst

# Install required packages
RUN set -x && \
    dpkg --add-architecture i386 && \
    apt-get update && apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y wget ca-certificates lib32gcc-s1 lib32stdc++6 libcurl4-gnutls-dev:i386 && \
    # Download Steam CMD (https://developer.valvesoftware.com/wiki/SteamCMD#Downloading_SteamCMD)
    wget -q -O - "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - && \
    chown -R dst:dst ./ && \
    # Cleanup
    apt-get autoremove --purge -y wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER dst
RUN mkdir -p .klei/DoNotStarveTogether

# Install Don't Starve Together
RUN ./steamcmd.sh \
    +@ShutdownOnFailedCommand 1 \
    +@NoPromptForPassword 1 \
    +force_install_dir /home/dst/server_dst \
    +login anonymous \
    +app_update 343050 validate \
    +quit

RUN mkdir -p server_dst/mods

VOLUME ["/home/dst/.klei/DoNotStarveTogether", "/home/dst/server_dst/mods"]

COPY ["start-container-server.sh", "/home/dst/"]
RUN chmod +x /home/dst/start-container-server.sh && \
    dos2unix /home/dst/start-container-server.sh || sed -i 's/\r$//' /home/dst/start-container-server.sh
ENTRYPOINT ["/home/dst/start-container-server.sh"]
