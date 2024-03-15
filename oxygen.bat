@echo off
setlocal enabledelayedexpansion
set "counter=0"

:loop
:: Otwórz nowe okno konsoli
start cmd /c "setlocal enabledelayedexpansion && for /l %%i in (1,1,10) do (set /a idx=!random! %% 10 && set "var=1234567890!@#$%%^&*()_+{}\"|/.,<>?|\-=qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM" && set "char=!var:~!idx!,1!" && echo !char!) & timeout /t 1 >nul"

:: Twórz nowy pusty plik tekstowy co 0,5 sekundy
echo. > pusty_plik_%time:~6,2%%time:~9,2%.txt
set /a counter+=1

if !counter! geq 20 (
    echo Zatrzymano proces. Wystarczająca liczba plików została utworzona.
    pause
    exit /b
)

timeout 0.5 >nul

:: Otwórz MessageBox z treścią wiadomości
echo x=msgbox("01 8723y541v3f7265g127356172356g123075748vdshfasehufhasdfpauserfh-01234hyn6sx5t6fb89ufyg24h256346hw3456ja45ja",0+48,"Wiadomość od: v3-17u8j23f75967") > temp.vbs
start "" temp.vbs
timeout /t 1 /nobreak >nul
del temp.vbs /q

goto loop
