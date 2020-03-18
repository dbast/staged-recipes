:: build
make all || goto :error

:: install
copy cp src/upx.out "%PREFIX%\bin\upx.exe" || goto :error

:: strip debug symbols
strip "%PREFIX%\bin\upx.exe" || goto :error
goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
