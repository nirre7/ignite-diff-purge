#!/usr/bin/env bash
set -euxo pipefail

# with  yarn global add ignite-cli@2.2.0
releasesWithOldCli=(
2.0.0
2.0.1
2.0.2
2.0.3
3.0.0
#3.1.0 Can not be created with detox
#3.1.1 Can not be created with detox
#3.1.2 Can not be created with detox
#3.2.0 Can not be created with detox
)

# with  yarn global add ignite-cli
releasesWithNewCli=(
#4.10.0 could not build: ignite-bowser does not have a boilerplate.js
4.10.1
4.11.0
4.11.1
4.11.2
)

#npx yarn global add ignite-cli@2.2.0
#for v in "${releasesWithOldCli[@]}"
#do
#    echo $v
#    ./new-release.sh $v
#done

#npx yarn global add ignite-cli
for v in "${releasesWithNewCli[@]}"
do
    echo $v
    ./new-release.sh $v
done
