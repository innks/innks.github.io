@echo off
setlocal

:_main
cls
echo.
echo.
echo.
echo.     
echo. ^<1^> hexo clean
echo.
echo. ^<2^> hexo server
echo. ^<3^> hexo server --drafts
echo.
echo. ^<4^> hexo generate
echo. ^<5^> hexo deploy
echo. ^<6^> hexo generate --deploy
echo.
echo. ^<7^> hexo new 파일명 ^<- 새창으로 이동
echo. ^<8^> exit
echo.
echo. 1 ~ 8 . 아닌 문자는 리턴입니다.
echo.
echo.
echo.
set numb=
set /p numb= 해당 숫자를 입력하세요 : 
if '%numb%' EQU '' set numb=%numb:null%
if '%numb%' EQU '1' goto _CL
if '%numb%' EQU '2' goto _S
if '%numb%' EQU '3' goto _SD
if '%numb%' EQU '4' goto _G
if '%numb%' EQU '5' goto _D
if '%numb%' EQU '6' goto _GD
if '%numb%' EQU '7' goto _N
if '%numb%' EQU '8' exit
ECHO "%numb%" 이것이 아닙니다. 다시 부탁합니다.
pause
goto _main

:_CL
echo hexo clean
hexo clean
pause
exit

:_S
echo hexo server
hexo server
pause
exit

:_SD
echo hexo server --drafts
hexo server --drafts
pause
exit

:_G
echo hexo generate
hexo generate
pause
exit

:_D
echo hexo deploy
hexo deploy
pause
exit

:_GD
echo hexo generate --deploy
hexo generate --deploy
pause
exit

:_N
cls
echo.
echo. ^<1^> 전단계 이동
echo.
echo. 예) hexo new 파일명
echo.
echo. - 새롭게 만들 파일명은 띄어쓰기시 뒤에 것으로 입력 됩니다.
echo. - 같은 파일이 있을시 (파일명-숫자)가 붙습니다.
echo. 
set strn=
set /p strn= 새롭게 만들 (파일명)을 적으세요 : 
if '%strn%' EQU '' set numb=%strn:null%
if '%strn%' EQU '1' goto _main
if '%strn%' NEQ '' goto _NN
echo. "%numb%" 이것이 아닙니다. 다시 부탁합니다.
pause
goto _N

:_NN
echo hexo new %strn%
hexo new %strn%
pause
exit