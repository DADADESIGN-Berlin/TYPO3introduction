@ echo off

for %%I in (.) do set curDir=%%~nxI

echo Current Directory: %curDir%

echo Installing TYPO3 via copmposer

call composer self-update

call composer install

echo Copying FIRST_INSTALL to public/

copy "FIRST_INSTALL" public

echo Open localhost/t3/%curDir%/public in chrome

start chrome localhost/t3/%curDir%/public

echo Open Visual Studio Code

call code .
