

# INSTALL: 
# - locales UTF-8
# - wget, php7.3 (Extense: json, pdo, mysql, zip, gd, curl, xml, mbstring, bcmath, json, memcached)    
# - nano, htop, curl, openssh-client, default-mysql-client, git, php composer, lynx, pandoc, ffmpeg
#
#
#
# - Directory Scripts: /xtlabscripts/
# - EVN hostmachine
# - /data/


FROM debian:11

# apt-get and system utilities
RUN apt-get update && apt-get install -y \
	curl apt-transport-https debconf-utils gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# adding custom MS repository
RUN curl https://packages.microsoft.com/keys/microsoft.asc > /etc/apt/trusted.gpg.d/microsoft.asc
RUN curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list

# install SQL Server drivers and tools
RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql18 mssql-tools18
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"


RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && apt-get update -y \
    && apt upgrade -y \
    && apt-get install python3-pip -y \
    && pip install mssql-scripter \
    && apt -y install wget lsb-release apt-transport-https ca-certificates \
    && wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.3.list \
    && apt-get update -y \
    && apt -y install php7.3 \
    && apt install php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json -y php-memcached \
    && apt-get install nano htop curl openssh-client default-mysql-client git pandoc lynx ffmpeg -y \
    && apt-get update -y \
    && apt-get install -y iputils-ping \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && rm -rf /var/lib/apt/lists/* \
    && export PATH="$PATH:/xtlabscripts/:/opt/mssql-tools/bin"
RUN apt update -y
RUN apt-get install dnsutils -y


# Add RClone (instal curl if not exist)
RUN apt-get update && apt-get install && apt-get install busybox -y \
	&& curl https://rclone.org/install.sh | bash \
    && rm -rf /var/lib/apt/lists/*    
    

ENV LANG=en_US.utf8

# ENTRYPOINT [ "sleep" ]
# CMD [ "infinity" ]
CMD ["bash"]