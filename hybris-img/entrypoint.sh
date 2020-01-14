#!/bin/bash

cd /src/hybris/bin/platform

chmod +x *.sh

if "$1" == "init"
    echo "ant customize clean all && ./hybrisserver.sh debug"
    #ant customize clean all && ./hybrisserver.sh debug
fi

if "$1" == "customize-all"
    echo "ant customize && ant clean all"
    #ant customize && ant clean all
fi

if "$1" == "clean-all"
    echo "ant clean all"
    #ant clean all
fi

if "$1" == "start"
    echo "./hybrisserver.sh debug"
    #./hybrisserver.sh debug
fi

if "$1" == "deploy"
    echo "ant clean all && ./hybrisserver.sh debug"
    #ant clean all && ./hybrisserver.sh debug
fi