#!/bin/bash

cd /src/hybris/bin/platform

chmod +x *.sh

# update config/local.properties

start-hybris-server() {
    if "${DEBUG}" == 1
      echo "./hybrisserver.sh debug"
      #./hybrisserver.sh debug
      else
        echo "./hybrisserver.sh"
        #./hybrisserver.sh
    fi
}

if "$1" == "init"
    echo "ant customize clean all && ant deploy"
    # ant customize clean all && ant deploy && start-hybris-server
fi

if "$1" == "build"
    echo "ant clean all && start-hybris-server"
    #ant clean all && start-hybris-server
fi

exec "$@"