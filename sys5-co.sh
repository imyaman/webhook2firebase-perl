SRC="/home/imyaman/webhook2firebase-perl/workdir/sys5-co"
DEST="/home/imyaman/webhook2firebase-perl/workdir/sys5-co-firebase/public"
cd $SRC
echo "PWD is " $PWD
git pull
cp -R -f ./* $DEST
cd $DEST; cd ..
firebase deploy
