@echo off
mode 25,10
goto :Checker
:Checker
mode 25,10
if not exist C:\PassProtectModule md C:\PassProtectModule >nul
if not exist C:\PassProtectModule\%Project% >nul md C:\PassProtectModule\%Project% >nul
cls
set filename=%Project%Encrypted%username%
timeout /t 1 /nobreak >nul
if exist C:\PassProtectModule\%Project%\%filename%.key goto CCC
if not exist C:\PassProtectModule\%Project%\%filename%.key goto ENC
goto MenuError
goto Checker
:ENC
cls
cls
:ENCpwd
set "text=BatchXpert22"
:ENC2
set num2=0
set c=
set /a num1=%num1%+1
set /a num3=%num3%+1
if %num3%==1 set c=%text:~0,1%
if %num3%==2 set c=%text:~1,1%
if %num3%==3 set c=%text:~2,1%
if %num3%==4 set c=%text:~3,1%
if %num3%==5 set c=%text:~4,1%
if %num3%==6 set c=%text:~5,1%
if %num3%==7 set c=%text:~6,1%
if %num3%==8 set c=%text:~7,1%
if %num3%==9 set c=%text:~8,1%
if %num3%==10 set c=%text:~9,1%
if %num3%==11 set c=%text:~10,1%
if %num3%==12 set c=%text:~11,1%
if %num3%==13 set c=%text:~12,1%
if %num3%==14 set c=%text:~13,1%
if %num3%==15 set c=%text:~14,1%
if %num3%==16 set c=%text:~15,1%
if %num3%==17 set c=%text:~16,1%
if %num3%==18 set c=%text:~17,1%
if %num3%==19 set c=%text:~18,1%
if %num3%==20 set c=%text:~19,1%
if %num3%==21 goto ENC4
:ENC3
if %num2%==0 set L=
if %num2%==1 set L=a
if %num2%==2 set L=b
if %num2%==3 set L=c
if %num2%==4 set L=d
if %num2%==5 set L=e
if %num2%==6 set L=f
if %num2%==7 set L=g
if %num2%==8 set L=h
if %num2%==9 set L=i
if %num2%==10 set L=j
if %num2%==11 set L=k
if %num2%==12 set L=l
if %num2%==13 set L=m
if %num2%==14 set L=n
if %num2%==15 set L=o
if %num2%==16 set L=p
if %num2%==17 set L=q
if %num2%==18 set L=r
if %num2%==19 set L=s
if %num2%==20 set L=t
if %num2%==21 set L=u
if %num2%==22 set L=v
if %num2%==23 set L=w
if %num2%==24 set L=x
if %num2%==25 set L=y
if %num2%==26 set L=z
if %num2%==27 set L=A
if %num2%==28 set L=B
if %num2%==29 set L=C
if %num2%==30 set L=D
if %num2%==31 set L=E
if %num2%==32 set L=F
if %num2%==33 set L=G
if %num2%==34 set L=H
if %num2%==35 set L=I
if %num2%==36 set L=J
if %num2%==37 set L=K
if %num2%==38 set L=L
if %num2%==39 set L=M
if %num2%==40 set L=N
if %num2%==41 set L=O
if %num2%==42 set L=P
if %num2%==43 set L=Q
if %num2%==44 set L=R
if %num2%==45 set L=S
if %num2%==46 set L=T
if %num2%==47 set L=U
if %num2%==48 set L=V
if %num2%==49 set L=W
if %num2%==50 set L=X
if %num2%==51 set L=Y
if %num2%==52 set L=Z
if %num2%==53 set L=1
if %num2%==54 set L=2
if %num2%==55 set L=3
if %num2%==56 set L=4
if %num2%==57 set L=5
if %num2%==58 set L=6
if %num2%==59 set L=7
if %num2%==60 set L=8
if %num2%==61 set L=9
if %num2%==62 set L=0
set e%num1%=
if "%c%"=="%L%" set e%num1%=%num2%
if "%c%"==" " set e%num1%=0
set /a num2=%num2%+1
if defined e%num1% goto ENC2
goto ENC3
:ENC4.1
set /a Rnum=%Rnum%-1
:ENC4
set /a Rnum=%Rnum%+1
set rcheck=
set rcheck2=
set rcheck=%random:~0,4%
set /a rcheck2=%rcheck%+63
if %rcheck% LSS 1063 goto ENC4.1
if %rcheck2% GTR 9999 goto ENC4.1
set r%Rnum%=%rcheck%
if defined r20 goto ENC5
goto ENC4
:ENC5
set /a e1=%e1%+%r1%
set /a e2=%e2%+%r2%
set /a e3=%e3%+%r3%
set /a e4=%e4%+%r4%
set /a e5=%e5%+%r5%
set /a e6=%e6%+%r6%
set /a e7=%e7%+%r7%
set /a e8=%e8%+%r8%
set /a e9=%e9%+%r9%
set /a e10=%e10%+%r10%
set /a e11=%e11%+%r11%
set /a e12=%e12%+%r12%
set /a e13=%e13%+%r13%
set /a e14=%e14%+%r14%
set /a e15=%e15%+%r15%
set /a e16=%e16%+%r16%
set /a e17=%e17%+%r17%
set /a e18=%e18%+%r18%
set /a e19=%e19%+%r19%
set /a e20=%e20%+%r20%
echo %e1%%e2%%e3%%e4%%e5%%e6%%e7%%e8%%e9%%e10%%e11%%e12%%e13%%e14%%e15%%e16%%e17%%e18%%e19%%e20%>"C:\PassProtectModule\%Project%\%filename%.pwd"
echo %r1%%r2%%r3%%r4%%r5%%r6%%r7%%r8%%r9%%r10%%r11%%r12%%r13%%r14%%r15%%r16%%r17%%r18%%r19%%r20%>"C:\PassProtectModule\%Project%\%filename%.key"
:ENC6
cls
echo Successfully Finsihed, Opening Login
goto DEC
:DEC
:CCC
title 
echo %Project% / Login
cls
echo %Project% / Login
if not exist "C:\PassProtectModule\%Project%\%filename%.pwd" goto ERRpwd
if not exist "C:\PassProtectModule\%Project%\%filename%.key" goto ERRkey
goto DEC2
:ERRpwd
echo ERROR: C:\PassProtectModule\%Project%\%filename%.pwd was not found
pause
goto DEC
:ERRkey
echo ERROR: C:\PassProtectModule\%Project%\%filename%.key was not found
pause
goto DEC
:DEC2
cls
echo %Project% \ Loader
echo.
echo Loading Online
echo Protection Key...
timeout /t 2 /nobreak >nul
set /p key= <"C:\PassProtectModule\%Project%\%filename%.key"
set /p pwd= <"C:\PassProtectModule\%Project%\%filename%.pwd"
set k1=%key:~0,4%
set k2=%key:~4,4%
set k3=%key:~8,4%
set k4=%key:~12,4%
set k5=%key:~16,4%
set k6=%key:~20,4%
set k7=%key:~24,4%
set k8=%key:~28,4%
set k9=%key:~32,4%
set k10=%key:~36,4%
set k11=%key:~40,4%
set k12=%key:~44,4%
set k13=%key:~48,4%
set k14=%key:~52,4%
set k15=%key:~56,4%
set k16=%key:~60,4%
set k17=%key:~64,4%
set k18=%key:~68,4%
set k19=%key:~72,4%
set k20=%key:~76,4%
set e1=%pwd:~0,4%
set e2=%pwd:~4,4%
set e3=%pwd:~8,4%
set e4=%pwd:~12,4%
set e5=%pwd:~16,4%
set e6=%pwd:~20,4%
set e7=%pwd:~24,4%
set e8=%pwd:~28,4%
set e9=%pwd:~32,4%
set e10=%pwd:~36,4%
set e11=%pwd:~40,4%
set e12=%pwd:~44,4%
set e13=%pwd:~48,4%
set e14=%pwd:~52,4%
set e15=%pwd:~56,4%
set e16=%pwd:~60,4%
set e17=%pwd:~64,4%
set e18=%pwd:~68,4%
set e19=%pwd:~72,4%
set e20=%pwd:~76,4%
:DEC3
set num2=0
set t=
set /a num=%num%+1
if %num%==1 set /a t=%e1%-%k1%
if %num%==2 set /a t=%e2%-%k2%
if %num%==3 set /a t=%e3%-%k3%
if %num%==4 set /a t=%e4%-%k4%
if %num%==5 set /a t=%e5%-%k5%
if %num%==6 set /a t=%e6%-%k6%
if %num%==7 set /a t=%e7%-%k7%
if %num%==8 set /a t=%e8%-%k8%
if %num%==9 set /a t=%e9%-%k9%
if %num%==10 set /a t=%e10%-%k10%
if %num%==11 set /a t=%e11%-%k11%
if %num%==12 set /a t=%e12%-%k12%
if %num%==13 set /a t=%e13%-%k13%
if %num%==14 set /a t=%e14%-%k14%
if %num%==15 set /a t=%e15%-%k15%
if %num%==16 set /a t=%e16%-%k16%
if %num%==17 set /a t=%e17%-%k17%
if %num%==18 set /a t=%e18%-%k18%
if %num%==19 set /a t=%e19%-%k19%
if %num%==20 set /a t=%e20%-%k20%
if %num%==21 goto DEC5
:DEC4
if %num2%==0 set L=blank
if %num2%==1 set L=a
if %num2%==2 set L=b
if %num2%==3 set L=c
if %num2%==4 set L=d
if %num2%==5 set L=e
if %num2%==6 set L=f
if %num2%==7 set L=g
if %num2%==8 set L=h
if %num2%==9 set L=i
if %num2%==10 set L=j
if %num2%==11 set L=k
if %num2%==12 set L=l
if %num2%==13 set L=m
if %num2%==14 set L=n
if %num2%==15 set L=o
if %num2%==16 set L=p
if %num2%==17 set L=q
if %num2%==18 set L=r
if %num2%==19 set L=s
if %num2%==20 set L=t
if %num2%==21 set L=u
if %num2%==22 set L=v
if %num2%==23 set L=w
if %num2%==24 set L=x
if %num2%==25 set L=y
if %num2%==26 set L=z
if %num2%==27 set L=A
if %num2%==28 set L=B
if %num2%==29 set L=C
if %num2%==30 set L=D
if %num2%==31 set L=E
if %num2%==32 set L=F
if %num2%==33 set L=G
if %num2%==34 set L=H
if %num2%==35 set L=I
if %num2%==36 set L=J
if %num2%==37 set L=K
if %num2%==38 set L=L
if %num2%==39 set L=M
if %num2%==40 set L=N
if %num2%==41 set L=O
if %num2%==42 set L=P
if %num2%==43 set L=Q
if %num2%==44 set L=R
if %num2%==45 set L=S
if %num2%==46 set L=T
if %num2%==47 set L=U
if %num2%==48 set L=V
if %num2%==49 set L=W
if %num2%==50 set L=X
if %num2%==51 set L=Y
if %num2%==52 set L=Z
if %num2%==53 set L=1
if %num2%==54 set L=2
if %num2%==55 set L=3
if %num2%==56 set L=4
if %num2%==57 set L=5
if %num2%==58 set L=6
if %num2%==59 set L=7
if %num2%==60 set L=8
if %num2%==61 set L=9
if %num2%==62 set L=0
set t%num%=
if %t%==%num2% set t%num%=%L%
if defined t%num% goto DEC3
set /a num2=%num2%+1
goto DEC4
:StartUpRunUp

goto PasteHere
goto :StartUpRunUp
:DEC5
if not %t1%==blank set "tD1=*"
if not %t2%==blank set "tD2=*"
if not %t3%==blank set "tD3=*"
if not %t4%==blank set "tD4=*"
if not %t5%==blank set "tD5=*"
if not %t6%==blank set "tD6=*"
if not %t7%==blank set "tD7=*"
if not %t8%==blank set "tD8=*"
if not %t9%==blank set "tD9=*"
if not %t10%==blank set "tD10=*"
if not %t11%==blank set "tD11=*"
if not %t12%==blank set "tD12=*"
if not %t13%==blank set "tD13=*"
if not %t14%==blank set "tD14=*"
if not %t15%==blank set "tD15=*"
if not %t16%==blank set "tD16=*"
if not %t17%==blank set "tD17=*"
if not %t18%==blank set "tD18=*"
if not %t19%==blank set "tD19=*"
if not %t20%==blank set "tD20=*"

set Length=0
if not %t1%==blank set /a Length=%Length% +1
if not %t2%==blank set /a Length=%Length% +1
if not %t3%==blank set /a Length=%Length% +1
if not %t4%==blank set /a Length=%Length% +1
if not %t5%==blank set /a Length=%Length% +1
if not %t6%==blank set /a Length=%Length% +1
if not %t7%==blank set /a Length=%Length% +1
if not %t8%==blank set /a Length=%Length% +1
if not %t9%==blank set /a Length=%Length% +1
if not %t10%==blank set /a Length=%Length% +1
if not %t11%==blank set /a Length=%Length% +1
if not %t12%==blank set /a Length=%Length% +1
if not %t13%==blank set /a Length=%Length% +1
if not %t14%==blank set /a Length=%Length% +1
if not %t15%==blank set /a Length=%Length% +1
if not %t16%==blank set /a Length=%Length% +1
if not %t17%==blank set /a Length=%Length% +1
if not %t18%==blank set /a Length=%Length% +1
if not %t19%==blank set /a Length=%Length% +1
if not %t20%==blank set /a Length=%Length% +1
if %t1%==blank set "t1="
if %t2%==blank set "t2="
if %t3%==blank set "t3="
if %t4%==blank set "t4="
if %t5%==blank set "t5="
if %t6%==blank set "t6="
if %t7%==blank set "t7="
if %t8%==blank set "t8="
if %t9%==blank set "t9="
if %t10%==blank set "t10="
if %t11%==blank set "t11="
if %t12%==blank set "t12="
if %t13%==blank set "t13="
if %t14%==blank set "t14="
if %t15%==blank set "t15="
if %t16%==blank set "t16="
if %t17%==blank set "t17="
if %t18%==blank set "t18="
if %t19%==blank set "t19="
if %t20%==blank set "t20="
set "Pass=%t1%%t2%%t3%%t4%%t5%%t6%%t7%%t8%%t9%%t10%%t11%%t12%%t13%%t14%%t15%%t16%%t17%%t18%%t19%%t20%"
set BlurPass=%tD1%%tD2%%tD3%%tD4%%tD5%%tD6%%tD7%%tD8%%tD9%%tD10%%tD11%%tD12%%tD13%%tD14%%tD15%%tD16%%tD17%%tD18%%tD19%%tD20%
set Hint=%t1%%tD2%%tD3%%tD4%%tD5%%tD6%%tD7%%tD8%%tD9%%tD10%%tD11%%tD12%%tD13%%tD14%%tD15%%tD16%%tD17%%tD18%%tD19%%tD20%
:Redo
mode 25,10
cls
title  
echo %Project% / Login
echo.
echo [A-Z,a-z,0-9]
echo Key Length: %Length%
echo.
echo Insert Protection Key:
echo %BlurPass%
set /p "PW="
if "%PW%"=="%Pass%" cls & echo Correct Password: & echo %Pass% & timeout /t 2 /nobreak >nul & goto StartUpRunUp
cls
echo Hint:%Hint%
echo Key Length: %Length%
echo.
echo Invalid Protection Key
timeout /t 2 /nobreak >nul
goto Redo
::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Paste Your Code Below The :PasteHere          ::
::::::::::::::::::::::::::::::::::::::::::::::::::::
:PasteHere
mode 120,30
