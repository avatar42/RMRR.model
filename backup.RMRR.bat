set PATH=C:\cygwin\bin;%PATH%
c:
cd C:\DeepStackWS\deepstack
rm -fr C:\DeepStackWS\RMRR.model\train
find ./train -type f -print | cpio -pvumd C:\DeepStackWS\RMRR.model
rm -fr C:\DeepStackWS\RMRR.model\test
find ./test -type f -print | cpio -pvumd C:\DeepStackWS\RMRR.model
rm -fr C:\DeepStackWS\RMRR.model\debug.pics
find ./debug.pics -type f -print | cpio -pvumd C:\DeepStackWS\RMRR.model

cp -p RMRR.trainTest.log test.cache train.cache C:\DeepStackWS\RMRR.model

cd C:\DeepStackWS\deepstack-trainer
cp -p RMRR.train.log C:\DeepStackWS\RMRR.model\train-runs

cd C:\DeepStackWS\deepstack-trainer\train-runs\deepstack\RMRR
find . -type f -print | cpio -pvumd C:\DeepStackWS\RMRR.model\train-runs

cp -p C:\DeepStackWS\deepstack-trainer\train-runs\deepstack\RMRR\weights\best.pt C:\DeepStackWS\RMRR.model\RMRR.pt
cp -p C:\DeepStackWS\RMRR.model\train\classes.txt C:\DeepStackWS\RMRR.model\RMRR_classes.txt

pause


