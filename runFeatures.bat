ECHO OFF


echo timeOut
timeout /t 20
echo run calabash android

bundle exec calabash-android run parcial2/parcial2/com.evancharlton.mileage-mutant%1/com.evancharlton.mileage_3110-aligned-debugSigned.apk --format html --out report.html
::bundle exec calabash-android run com.evancharlton.mileage.apk --format html --out report.html





