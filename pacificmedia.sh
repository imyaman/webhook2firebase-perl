SRC="/home/imyaman/webhook2firebase-perl/workdir/pacificmedia"
DEST="/home/imyaman/webhook2firebase-perl/workdir/pacificmedia-firebase"
cd $SRC
echo "PWD is " $PWD
git pull
cp -R -f ./* $DEST/public/
cd $DEST
firebase deploy --only hosting
