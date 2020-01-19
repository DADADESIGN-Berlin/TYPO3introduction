@ echo off

for %%I in (.) do set curDir=%%~nxI

echo Current Directory: %curDir%

echo Installing TYPO3 via copmposer

call composer self-update

call composer install

echo Copying FIRST_INSTALL to web/

copy "FIRST_INSTALL" web

echo Open localhost/t3/%curDir%/web in chrome

start chrome localhost/t3/%curDir%/web

echo Open Visual Studio Code

call code .
