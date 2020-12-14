
::mkdir mutant%1

::cd mutant%1
mkdir oracle
cd oracle
mkdir logs
mkdir screenshots

cd ..

::FOR  %%G  IN (*.png) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\mutant%1\screenshots"
FOR  %%G  IN (*.png) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\oracle\screenshots"
::FOR  %%G  IN (*.txt) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\mutant%1\logs"
FOR  %%G  IN (*.txt) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\oracle\logs
::FOR  %%G IN (*.html) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\mutant%1"
FOR  %%G IN (*.html) DO MOVE %%G "C:\Users\juseg\Documents\Pruebas\Practico2\oracle"

git status

git add .
git commit -m"pushing oracle"
:: git commit -m "pushing mutant%1"
git pull
git push

echo finished