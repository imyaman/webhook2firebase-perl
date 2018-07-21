SRC="/home/imyaman/webhook2firebase-perl/workdir/devopskorea.github.io"
DEST="/home/imyaman/webhook2firebase-perl/workdir/devopskorea-firebase/public"
cd $SRC
echo "PWD is " $PWD
git pull
cp -R -f ./* $DEST
cd $DEST; cd ..
firebase deploy
