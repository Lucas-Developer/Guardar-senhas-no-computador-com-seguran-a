@echo off
title Cripter N�C�_TM
:in
cls
mode 79,17
color 08
echo.
echo   �������������������������������������������������������������������������ͻ
echo   �                        � �M�AR@LHAND� M��T�$ �                          �
echo   �������������������������������������������������������������������������͹ 
echo   �������������������������������������������������������������������������ۺ 
echo   �����������������������������������������������Ŀ������������������������ۺ
echo   �����������������������۳ CR�PT�GRAF!@ ќ T�XT� �������������������������ۺ
echo   �����������������������������������������������Ĵ������������������������ۺ
echo   �����������������������Ĵ                       ��������������������Ŀ���ۺ
echo   ����۳ 1 MODO NORMAL ���   D  �E$ENCR!PTAR    ��� 2 MODO PRO      ����ۺ
echo   ������                  �                       �                    ����Ĺ
echo   �������������������������������������������������������������������������͹
echo   ����������������� 01001100 01010101 01000011 01000001 01010011 �����������������
echo   �������������������������������������������������������������������������ͼ
echo   �

set op="0"
set /p op=. � Op��es: 1 � 2 � D  
if not exist "%temp%\cript" (md "%temp%\cript" & attrib "%temp%\cript" +s +h)
echo >"%temp%\cript\0"
if exist "%temp%\cript\%op%" (
echo msgbox"Escolha uma op��o. Criptografia [1.Modo Normal] - [2.Modo Pro]  [D.Desencriptar]" ,vbexclamation, "Criptografia PRO" >%temp%\msg.vbs
start %temp%\msg.vbs 
del "%temp%\cript\0" /q /f & goto in
)

if "%op%" =="1" goto normal
if "%op%" =="2" goto pro
if "%op%" =="D" goto decrypt
if "%op%" =="d" goto decrypt
echo msgbox"[%op%] Op��o inv�lida!" ,vbcritical, "Criptografia Pro" >%temp%\msg.vbs
start %temp%\msg.vbs & goto in

:: CRIPTOGRAFIA NORMAL
:normal
cls
color 0b
echo.
echo �������������������������������������������������������������������������������
echo  Criptografia MODO NORMAL � [sequencia bin�ria] � Digite o texto:
echo �������������������������������������������������������������������������������
set s="0"
set /p s=� 
if not exist "%temp%\cript" (md "%temp%\cript" & attrib "%temp%\cript" +s +h)
echo >"%temp%\cript\0"
if exist "%temp%\cript\%s%" (
echo msgbox"Digite o texto sua anta!!!" ,vbcritical, "Criptografador PRO" > %temp%\msg.vbs
start %temp%\msg.vbs
del "%temp%\cript\0" /q /f & goto normal
)

set n=%random%
::CRIPTOGRAFA  
set s=%s: =0100001 % 
set s=%s:a=0100000 % 
set s=%s:b=0100011 % 
set s=%s:c=0100010 % 
set s=%s:d=0100101 % 
set s=%s:e=0100100 % 
set s=%s:f=0100111 % 
set s=%s:g=0100110 % 
set s=%s:h=0101001 % 
set s=%s:i=0101000 % 
set s=%s:j=0101011 % 
set s=%s:k=0101010 % 
set s=%s:l=0101101 % 
set s=%s:m=0101100 % 
set s=%s:n=0101111 % 
set s=%s:o=0101110 % 
set s=%s:p=0110001 % 
set s=%s:q=0110000 % 
set s=%s:r=0110011 % 
set s=%s:s=0110010 % 
set s=%s:t=0110101 % 
set s=%s:u=0110100 % 
set s=%s:v=0110111 % 
set s=%s:w=0110110 % 
set s=%s:x=0111001 % 
set s=%s:y=0111000 % 
set s=%s:z=0111011 %

::SIMBOLOS 
set s=%s:!=010000 % 
set s=%s:,=01011011 % 
set s=%s:.=01011101 % 
set s=%s:@=0010110 % 
set s=%s:?=0111111 % 
set s=%s::=01111 % 
set s=%s:(=0101 % 
set s=%s:)=1010 %
set s=%s:$=010 %
set s=%s:#=1101 %
set s=%s:;=01011 %
set s=%s:"=10100 %
set s=%s:'=01100 %
set s=%s:�=011011 %
set s=%s:\=10111 %
set s=%s:/=11100 %
set s=%s:_=0011 %
set s=%s:�=0110 %
set s=%s:�=1001 %
set s=%s:+=01000 %
set s=%s:-=100100 %
set s=%s:{=111000 %
set s=%s:}=000111 %
set s=%s:[=1011000 %
set s=%s:]=01001110 %


::ESPECIAIS
::A
set s=%s:�=01111111 %
set s=%s:�=01111110 %
set s=%s:�=10000001 %
set s=%s:�=00000001 %
set s=%s:�=11111110 %
::C
set s=%s:�=11111111 %
::E
set s=%s:�=00000000 %
set s=%s:�=0000001 %
set s=%s:�=000001 %
set s=%s:�=00001 %
::I
set s=%s:�=1111110 %
::N
set s=%s:�=111110 %
::O
set s=%s:�=11110 %
set s=%s:�=1110 %
set s=%s:�=0001 %
set s=%s:�=1111 %
::U
set s=%s:�=0111 %
set s=%s:�=101 %

echo %s% > TEXTO_CRIPTOGRAFADO_%n%.txt 
start TEXTO_CRIPTOGRAFADO_%n%.txt
goto in

:: DESENCRIPTAR
:decrypt
cls
color 0a
echo.
echo �������������������������������������������������������������������������������
echo  �E$ENCR!PTAR � MODO NORMAL � [Cole aqui a sequencia bin�ria]
echo �������������������������������������������������������������������������������
set s="0"
set /p s=� 
if not exist "%temp%\cript" (md "%temp%\cript" & attrib "%temp%\cript" +s +h)
echo >"%temp%\cript\0"
if exist "%temp%\cript\%s%" (
echo msgbox"Cole o texto sua anta!!!" ,vbcritical, "Criptografador PRO" > %temp%\msg.vbs
start %temp%\msg.vbs
del "%temp%\cript\0" /q /f & goto decrypt
)

set n=%random%
set s=%s:0100001 = % 
set s=%s:0100000 =a% 
set s=%s:0100011 =b% 
set s=%s:0100010 =c% 
set s=%s:0100101 =d% 
set s=%s:0100100 =e% 
set s=%s:0100111 =f% 
set s=%s:0100110 =g% 
set s=%s:0101001 =h% 
set s=%s:0101000 =i% 
set s=%s:0101011 =j% 
set s=%s:0101010 =k% 
set s=%s:0101101 =l% 
set s=%s:0101100 =m% 
set s=%s:0101111 =n% 
set s=%s:0101110 =o% 
set s=%s:0110001 =p% 
set s=%s:0110000 =q% 
set s=%s:0110011 =r% 
set s=%s:0110010 =s% 
set s=%s:0110101 =t% 
set s=%s:0110100 =u% 
set s=%s:0110111 =v%  
set s=%s:0110110 =w% 
set s=%s:0111001 =x% 
set s=%s:0111000 =y% 
set s=%s:0111011 =z%

::SIMBOLOS 
set s=%s:010000 =!% 
set s=%s:01011011 =,% 
set s=%s:01011101 =.% 
set s=%s:0010110 =@% 
set s=%s:0111111 =?% 
set s=%s:01111 =:% 
set s=%s:0101 =(%
set s=%s:1010 =)%
set s=%s:010 =$%
set s=%s:1101 =#%
set s=%s:01011 =;%
set s=%s:10100 ="%
set s=%s:01100 ='%
set s=%s:011011 =�%
set s=%s:10111 =\%
set s=%s:11100 =/%
set s=%s:0011 =_%
set s=%s:0110 =�%
set s=%s:1001 =�%
set s=%s:01000 =+%
set s=%s:100100 =-%
set s=%s:111000 ={%
set s=%s:000111 =}%
set s=%s:1011000 =[%
set s=%s:01001110 =]%

::ESPECIAIS
::A
set s=%s:01111111 =�%
set s=%s:01111110 =�%
set s=%s:10000001 =�%
set s=%s:00000001 =�%
set s=%s:11111110 =�%
::C
set s=%s:11111111 =�%
::E
set s=%s:00000000 =�%
set s=%s:0000001 =�%
set s=%s:000001 =�%
set s=%s:00001 =�%
::I
set s=%s:1111110 =�%
::N
set s=%s:111110 =�%
::O
set s=%s:11110 =�%
set s=%s:1110 =�%
set s=%s:0001 =�%
set s=%s:1111 =�%
::U
set s=%s:0111 =�%
set s=%s:101 =�%

echo %s% > DESCRIPY_%n%.TXT

start DESCRIPY_%n%.TXT
goto in

:pro
cls
color 0c
echo.
echo �������������������������������������������������������������������������������
echo  CR!PT�GRAF� ќSCR!T�GRAFA�ѝ MODO PRO � [sequencia �nica] � Digite o texto:
echo �������������������������������������������������������������������������������
:: CRIPTOGRAFIA PRO
set txt=0
set /p txt=�
if not exist "%temp%\cript" (md "%temp%\cript" & attrib "%temp%\cript" +s +h)
echo >"%temp%\cript\0"
if exist "%temp%\cript\%txt%" (
echo msgbox"Digite o texto sua anta!!!" ,vbcritical, "Criptografador PRO" > %temp%\msg.vbs
start %temp%\msg.vbs
del "%temp%\cript\0" /q /f & goto pro
) else (
echo %txt% >"%temp%\cript\cript.pif"
)

:chave
mode 45,5
cls
echo >"%temp%\cript\0"
echo.
echo ---------------------------------------------
set key=0
set /p key=. Nome da chave 
if exist "%temp%\cript\%key%" (
echo msgbox"Digite o nome da chave decripter" ,vbexclamation, "Criptografador PRO" > %temp%\msg.vbs
start %temp%\msg.vbs 
del "%temp%\cript\0" /q /f & goto chave
)

:: ENCRIPTADOR PRO CABE�ALHO
if not exist "%temp%\cript" (md "%temp%\cript" & attrib "%temp%\cript" +s +h)
echo @echo off >"%temp%\cript\cripter.cmd"
echo title Criptografando... >>"%temp%\cript\cripter.cmd"
echo cd %%~dp0 >>"%temp%\cript\cripter.cmd"
echo for /f "tokens=*" %%%%T in (cript.pif) do ( >>"%temp%\cript\cripter.cmd"
echo set s=%%%%T >>"%temp%\cript\cripter.cmd"
echo ) >>"%temp%\cript\cripter.cmd"

:: DESENCRIPTADOR CABE�ALHO
set n=%random%
echo @echo off >"%key%_%n%.cmd"
echo mode 79,8 >>"%key%_%n%.cmd"
echo title �esencr�ptand�... >>"%key%_%n%.cmd"
echo color 0a >>"%key%_%n%.cmd"
echo :in >>"%key%_%n%.cmd"
echo cls >>"%key%_%n%.cmd"
echo echo. >>"%key%_%n%.cmd"
echo echo ������������������������������������������������������������������������������� >>"%key%_%n%.cmd"
echo echo  CHAVE %n% � MODO PRO � [Arraste o arquivo aqui] >>"%key%_%n%.cmd"
echo echo ������������������������������������������������������������������������������� >>"%key%_%n%.cmd"
echo set arq=0 >>"%key%_%n%.cmd"
echo set /p arq=- >>"%key%_%n%.cmd"
echo if %%arq%% == 0 ( >>"%key%_%n%.cmd"
echo echo msgbox"Arraste o arquivo" ,vbcritical, "Criptografia PRO" ^> %%temp%%\msg.vbs >>"%key%_%n%.cmd"
echo start %%temp%%\msg.vbs ^& goto in >>"%key%_%n%.cmd"
echo ) >>"%key%_%n%.cmd"
echo for /f %%%%A in (%%arq%%) do (set n=%%%%A) >>"%key%_%n%.cmd"
echo )  >>"%key%_%n%.cmd"
echo :: DESENCRIPTAR C�DIGO >>"%key%_%n%.cmd"
echo set n=%%n:ʥ��= %% >>"%key%_%n%.cmd"
echo set n=%%n:A��DE=0%% >>"%key%_%n%.cmd"
echo set n=%%n:B�BX�=1%% >>"%key%_%n%.cmd"
echo set n=%%n:F���=2%% >>"%key%_%n%.cmd"
echo set n=%%n:TĥBN=3%% >>"%key%_%n%.cmd"
echo set n=%%n:YOȣH=4%% >>"%key%_%n%.cmd"
echo set n=%%n:02��=5%% >>"%key%_%n%.cmd"
echo set n=%%n:QL�c�=6%% >>"%key%_%n%.cmd"
echo set n=%%n:J�c��=7%% >>"%key%_%n%.cmd"
echo set n=%%n:HNƪ�=8%% >>"%key%_%n%.cmd"
echo set n=%%n:O�t�h=9%% >>"%key%_%n%.cmd"
echo set s=%%n%% >>"%key%_%n%.cmd"

::CRIPTOGRAFA 
::ESPA�O 
set cod=%random%
echo set s=%%s: =%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod%= %% >>"%key%_%n%.cmd"

::A
set cod=%random%
echo set s=%%s:a=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =a%% >>"%key%_%n%.cmd"

::B
set cod=%random%
echo set s=%%s:b=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =b%% >>"%key%_%n%.cmd"

::C
set cod=%random%
echo set s=%%s:c=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =c%% >>"%key%_%n%.cmd"

::D
set cod=%random%
echo set s=%%s:d=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =d%% >>"%key%_%n%.cmd"

::E
set cod=%random%
echo set s=%%s:e=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =e%% >>"%key%_%n%.cmd"

::F
set cod=%random%
echo set s=%%s:f=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =f%% >>"%key%_%n%.cmd"

::G
set cod=%random%
echo set s=%%s:g=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =g%% >>"%key%_%n%.cmd"

::H
set cod=%random%
echo set s=%%s:h=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =h%% >>"%key%_%n%.cmd"

::I
set cod=%random%
echo set s=%%s:i=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =i%% >>"%key%_%n%.cmd"

::J
set cod=%random%
echo set s=%%s:j=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =j%% >>"%key%_%n%.cmd"

::K
set cod=%random%
echo set s=%%s:k=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =k%% >>"%key%_%n%.cmd"

::L
set cod=%random%
echo set s=%%s:l=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =l%% >>"%key%_%n%.cmd"

::M
set cod=%random%
echo set s=%%s:m=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =m%% >>"%key%_%n%.cmd"

::N
set cod=%random%
echo set s=%%s:n=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =n%% >>"%key%_%n%.cmd"

::O
set cod=%random%
echo set s=%%s:o=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =o%% >>"%key%_%n%.cmd"

::P
set cod=%random%
echo set s=%%s:p=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =p%% >>"%key%_%n%.cmd"

::Q
set cod=%random%
echo set s=%%s:q=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =q%% >>"%key%_%n%.cmd"

::R
set cod=%random%
echo set s=%%s:r=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =r%% >>"%key%_%n%.cmd"

::S
set cod=%random%
echo set s=%%s:s=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =s%% >>"%key%_%n%.cmd"

::T
set cod=%random%
echo set s=%%s:t=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =t%% >>"%key%_%n%.cmd"

::U
set cod=%random%
echo set s=%%s:u=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =u%% >>"%key%_%n%.cmd"

::V
set cod=%random%
echo set s=%%s:v=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =v%% >>"%key%_%n%.cmd"

::X
set cod=%random%
echo set s=%%s:x=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =x%% >>"%key%_%n%.cmd"

::Z
set cod=%random%
echo set s=%%s:z=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =z%% >>"%key%_%n%.cmd"

::W
set cod=%random%
echo set s=%%s:w=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =w%% >>"%key%_%n%.cmd"

::Y
set cod=%random%
echo set s=%%s:y=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =y%% >>"%key%_%n%.cmd"


:: SIMBOLOS

set cod=%random% 
echo set s=%%s:!=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =!%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:,=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =.%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:.=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =.%% >>"%key%_%n%.cmd"

set cod=%random% 
echo set s=%%s:@=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =@%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:?=%cod% %% >>"%temp%\cript\cripter.cmd" 
echo set s=%%s:%cod% =?%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s::=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =:%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:(=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =(%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:)=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =)%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:$=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =$%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:#=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =#%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:;=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =;%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:{=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% ={%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:}=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =}%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:[=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =[%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:]=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =]%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:'=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% ='%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:\=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =\%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:/=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =/%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:_=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =_%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:+=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =+%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:-=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =-%% >>"%key%_%n%.cmd"

::ESPECIAIS
::A
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::C
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::E
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::I
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::N
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::O
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

::U
set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

set cod=%random%
echo set s=%%s:�=%cod% %% >>"%temp%\cript\cripter.cmd"
echo set s=%%s:%cod% =�%% >>"%key%_%n%.cmd"

echo set n=%%s%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n: =ʥ��%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:0=A��DE%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:1=B�BX�%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:2=F���%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:3=TĥBN%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:4=YOȣH%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:5=02��%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:6=QL�c�%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:7=J�c��%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:8=HNƪ�%%  >>"%temp%\cript\cripter.cmd"
echo set n=%%n:9=O�t�h%%  >>"%temp%\cript\cripter.cmd"

::DECRYPT
echo echo %%s%% ^> DESCRIPY_%n%.txt >>"%key%_%n%.cmd"
echo start DESCRIPY_%n%.txt >>"%key%_%n%.cmd"

::CRIPYTER
echo echo    >>"%temp%\cript\cripter.cmd"
echo echo %%n%% ^> "%%userprofile%%\desktop\CRIPTOGRAFADO_%n%.txt" >>"%temp%\cript\cripter.cmd"
echo call "%%userprofile%%\desktop\CRIPTOGRAFADO_%n%.txt" >>"%temp%\cript\cripter.cmd"
echo echo 0101110001 Criptografia Master 0101110001 ^>cript.pif >>"%temp%\cript\cripter.cmd"
echo exit >>"%temp%\cript\cripter.cmd"
start /min %temp%\cript\cripter.cmd & goto in

	