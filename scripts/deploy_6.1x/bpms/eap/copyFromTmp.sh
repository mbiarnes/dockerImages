#!/bin/sh
#
# COPIES ALL SCRIPTS FOR DEPLOY OF 6.1.x ON JBoss EAP 6.3

FROM_DIR=/tmp/kieScripts/deploy/6.1.x/EAP6.3

cd $HOME/scripts

cp -r $FROM_DIR/config  .
cp $FROM_DIR/dailyServerInstall.sh  .
cp $FROM_DIR/deployArtifacts-a.sh  .
cp $FROM_DIR/deployArtifacts-b.sh  .
cp $FROM_DIR/deployReleaseArtifacts-a.sh  .
cp $FROM_DIR/deployReleaseArtifacts-b.sh  .
cp $FROM_DIR/deployed.sh  .
cp $FROM_DIR/logs.sh  .
cp $FROM_DIR/reinstall-eap-6.3.sh  .
cp $FROM_DIR/startServer.sh  .
cp $FROM_DIR/stopServer.sh  .
