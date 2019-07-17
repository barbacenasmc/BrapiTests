echo This batch file will backup the BMS data folder

echo Source Path = C:\BMS4\data
set source=C:\BMS4\data

cd C:\
If not exist "C:\backup" (
   mkdir C:\backup
) else (   
  cd C:\backup
)

set destination=%date:~-10,2%-%date:~7,2%-%date:~-4,4%
if not exist %destination% (
    echo Creating destination folder..
    mkdir %destination%
    echo %destination% folder created successfully
) else (
  echo Destination folder C:\backup\%destination% already exists. No backup will be created
)


echo Destination Path = C:\backup\%destination%


echo backing up files....

xcopy "%source%" "%destination%" /E