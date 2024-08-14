@shift /0
@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1
(for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" )




set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
set gg=[93m
set q=[90m
set gr=[32m
set o=[38;5;202m
set bb=[38;5;74m
set nn=[38;5;82m
set rr=[1;91m
set blb=[1;94m
set bn=[1;38;5;129m
set ha=[38;5;203m
set frr=[38;2;0;255;255m
set fw=[97m
set "redd=[04m" 
set ha=[38;5;203m
set "fk=[92m" 
set "xv=[91m" 
set "spar=[04m" 
set "sof=[1m" 
set "ww=[0m" 
set "bvv=[94m" 
set "op=[96m" 
set "tq=[0m" 
set "mnb=[91m"
set "zi=[96m" 
set "er=[40;33m" 
set "po=[40m" 
set "pu=[93m" 
set "cya=[96m" 
set "ggg=[90m" 
set "rp=[35m" 
set "drp=[95m" 
set "dr=[38;5;90m" 


:aleinu
mode 97,21
set "asciiArt[0]=   __  __                              _       _          "
set "asciiArt[1]=  |  \/  |                            | |     (_)         "
set "asciiArt[2]=  | \  / |   ___   _ __ ___    _ __   | |__    _   ___    "
set "asciiArt[3]=  | |\/| |  / _ \ | '_ ` _ \  | '_ \  | '_ \  | | / __|   "
set "asciiArt[4]=  | |  | | |  __/ | | | | | | | |_) | | | | | | | \__ \   "
set "asciiArt[5]=  |_|  |_|  \___| |_| |_| |_| | .__/  |_| |_| |_| |___/   "
set "asciiArt[6]=                              | |                         "
set "asciiArt[7]=                              |_|                         "

set "posX=20"
set "posY=5"
set /a "corMax=255"
set /a "incremento=5"

cls


echo( !esc![?25l


for /L %%i in (0,%incremento%,%corMax%) do (
    set /a "line=0"
    for /L %%j in (0,1,7) do (
        set "lineText=!asciiArt[%%j]!"
        echo !esc![!posY!;!posX!H!esc![38;2;%%i;%%i;%%im!lineText!!esc![0m
        set /a "posY+=1"
    )
    set /a "posY=5"
    timeout /t 0 /nobreak >nul
)

cmd /c timeout 4 /nobreak >nul
call :main





:tweaks
title iGust MaxPerformace 
cls
mode 118,30
set "ESC="

echo.
echo.
echo.

set "lines[0]=                               ██╗    ██████╗    ██╗   ██╗   ███████╗   ████████╗          "
set "lines[1]=                               ██║   ██╔════╝    ██║   ██║   ██╔════╝   ╚══██╔══╝ "
set "lines[2]=                               ██║   ██║  ███╗   ██║   ██║   ███████╗      ██║     "
set "lines[3]=                               ██║   ██║   ██║   ██║   ██║   ╚════██║      ██║      "
set "lines[4]=                               ██║   ╚██████╔╝   ╚██████╔╝   ███████║      ██║  "
set "lines[5]=                               ╚═╝    ╚═════╝     ╚═════╝    ╚══════╝      ╚═╝    "
set "lines[6]=                                                                     "


set "corLaranjaR=255"
set "corLaranjaG=165"
set "corLaranjaB=0"

set "corAzulR=0"
set "corAzulG=0"
set "corAzulB=255"

set "corBrancaR=255"
set "corBrancaG=255"
set "corBrancaB=255"

set "corCinzaR=128"
set "corCinzaG=128"
set "corCinzaB=128"

set "corRoxoR=128"
set "corRoxoG=0"
set "corRoxoB=128"

set "corVermelhoR=255"
set "corVermelhoG=0"
set "corVermelhoB=0"


for /L %%j in (0,1,82) do (
    set /a "corR[%%j]=((%%j * ((corRoxoR - corLaranjaR) + (corVermelhoR - corRoxoR) / 2)) / 82) + corLaranjaR"
    set /a "corG[%%j]=((%%j * ((corRoxoG - corLaranjaG) + (corVermelhoG - corRoxoG) / 2)) / 82) + corLaranjaG"
    set /a "corB[%%j]=((%%j * ((corRoxoB - corLaranjaB) + (corVermelhoB - corRoxoB) / 2)) / 82) + corLaranjaB"
)


for /L %%i in (0,1,6) do (
    set "texto=!lines[%%i]!"
    set "textoGradiente="
    for /L %%j in (0,1,82) do (
        set "char=!texto:~%%j,1!"
        if "!char!" == " " set "char= "
        set "textoGradiente=!textoGradiente!!ESC![38;2;!corR[%%j]!;!corG[%%j]!;!corB[%%j]!m!char!"
    )
    echo( !textoGradiente!!ESC![0m
)
        
echo 	 	 %q%────────────────────────────────────────────────────────────────────────────────── 
echo.          			
echo.
echo                      %o%[ %b%1 %o%]%w% Otimizar Memória                          %o%[ %b%2 %o%]%w% Desativar Windows Defender
echo.
echo                      %o%[ %b%3 %o%]%w% Ativar Mixer Clássico                     %o%[ %b%4 %o%]%w% Ativar Alt+Tab Clássico 
echo. 
echo                      %o%[ %b%5 %o%]%w% Otimizar BIOS                             %o%[ %b%6 %o%]%w% Otimizar DirectX
echo.
echo                      %o%[ %b%7 %o%]%w% Otimizar NTFS                             %o%[ %b%8 %o%]%w% Otimizar Kernel 
echo.
echo                      %o%[ %b%9 %o%]%w% Desativar Autologger                      %o%[ %b%10 %o%]%w% Tweaks de privacidade
echo. 
echo                      %o%[ %b%11 %o%]%w% Ativar Modo Escuro                       %o%[ %b%12 %o%]%w% Otimizar CPU 
echo.
echo.                     %o%[ %b%13 %o%]%w% KBM		                             %o%[ %b%14 %o%]%w% Debloat							 						  											
echo.
set /p opcao=">:%g% "%w%

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% equ 13 goto opcao13
if %opcao% equ 14 goto opcao14


:teclaerrada
goto :tweaks


:opcao1
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoSystemDmaBuffering" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableForcedTrim" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPagingReadAheadSize" /t REG_DWORD /d "67108864" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PageFileExcess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "UseWin32Heap" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PerformanceBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "UseLargeSystemCacheEx" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "UseUniformMemoryPolicies" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "WorkingSetSwapSharedPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TSDThreadCount" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MemoryPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableTSD" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionInitFlags" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisableDynamicTick" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "RegistryLazyFlushInterval" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache64" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOSchedulingMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive64" /t REG_DWORD /d "1" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalMemoryMapperEnforcementMode" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrimmingPolicy" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableLargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargePageDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SpecialPurposeMemoryPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TopBottomDPTEqual" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheAwareScheduling" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnforceWriteProtection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "AsyncFileCommit" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisableHHDEP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PoolUsageMaximum" /t REG_DWORD /d "96" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "VerifierRandomTargets" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagefileHybridPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "WriteWatch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "3072" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisableTsx" /t REG_DWORD /d "0" /f
reg add "hklm\system\controlset001\control\session manager\memory management" /v "secondleveldatacache" /t reg_dword /d "%sum1%" /f
reg add "hklm\system\controlset001\control\session manager\memory management" /v "thirdleveldatacache" /t reg_dword /d "%sum2%" /f
reg add "hklm\system\controlset001\control\session manager\memory management" /v "pagingfiles" /t reg_multi_sz /d "c:\pagefile.sys 0 0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "contigfileallocsize" /t reg_dword /d "1536" /f
reg add "hklm\system\controlset001\control\filesystem" /v "disabledeletenotification" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "dontverifyrandomdrivers" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "filenamecache" /t reg_dword /d "1024" /f
reg add "hklm\system\controlset001\control\filesystem" /v "longpathsenabled" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsallowextendedcharacter8dot3rename" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsbugcheckoncorrupt" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisable8dot3namecreation" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisablecompression" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisableencryption" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsencryptpagingfile" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsmemoryusage" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsmftzonereservation" /t reg_dword /d "4" /f
reg add "hklm\system\controlset001\control\filesystem" /v "pathcache" /t reg_dword /d "128" /f
reg add "hklm\system\controlset001\control\filesystem" /v "refsdisablelastaccessupdate" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "udfssoftwaredefectmanagement" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "win31filesystem" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "contigfileallocsize" /t reg_dword /d "1536" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "disabledeletenotification" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "dontverifyrandomdrivers" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "filenamecache" /t reg_dword /d "1024" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "longpathsenabled" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsallowextendedcharacter8dot3rename" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsbugcheckoncorrupt" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisable8dot3namecreation" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisablecompression" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisableencryption" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsencryptpagingfile" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsmemoryusage" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsmftzonereservation" /t reg_dword /d "3" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "pathcache" /t reg_dword /d "128" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "refsdisablelastaccessupdate" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "udfssoftwaredefectmanagement" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "win31filesystem" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\executive" /v "additionalcriticalworkerthreads" /t reg_dword /d "00000016" /f
reg add "hklm\system\currentcontrolset\control\session manager\executive" /v "additionaldelayedworkerthreads" /t reg_dword /d "00000016" /f
reg add "hklm\system\currentcontrolset\control\session manager\i/o system" /v "countoperations" /t reg_dword /d "00000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "clearpagefileatshutdown" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "featuresettingsoverride" reg_dword /d "00000003" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "featuresettingsoverridemask" reg_dword /d "00000003" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "iopagelocklimit" /t reg_dword /d "08000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "largesystemcache" /t reg_dword /d "00000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "systempages" /t reg_dword /d "4294967295" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "disablepagingexecutive" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "iopagelocklimit" /t reg_dword /d "16710656" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "largesystemcache" /t reg_dword /d "00000000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_BINARY /d 0000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_BINARY /d 0000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_BINARY /d 0000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_BINARY /d 0000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys 24576 24576" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_BINARY /d 3000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_BINARY /d 0400000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_BINARY /d 0000000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "GranularitySize" /t REG_SZ /d "AUTO" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "144BitDdrChannelsEnabled" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IncreaseDataQueueSizeEnabled" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "AllocatingInOutBuffersEnabled" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ChunkSizeCachingEnabled" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ThirdLevelDataCacheSharedBetweenThemProcessors" /t REG_BINARY /d 0100000000000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_BINARY /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_BINARY /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_BINARY /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DynamicMemory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCooling" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
timeout /t 3 /nobreak >nul
goto :tweaks

:opcao2
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /t REG_SZ /d "Warn" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PreventSmartScreenPromptOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0" /v "2301" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t "REG_DWORD" /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
timeout /t 3 /nobreak >nul
cls
goto tweaks

:opcao3
cls
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v EnableMtcUvc /t REG_DWORD /d 0 /f
timeout /t 3 /nobreak >nul
cls
goto tweaks

:opcao4
cls 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AltTabSettings /t REG_DWORD /d 1 /f
timeout /t 3 /nobreak >nul
cls
goto tweaks

:opcao5
cls
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuSpeed" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /ve /t REG_SZ /d "True" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CpuCoresAlways" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CpuUtilization" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "LatencyPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "RenderingSpread" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "RenderingPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "LatencySpread" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "RenderingPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "LatencyPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CpuSpread" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuRenderingPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "SpreadPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuMax" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "MaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "MinPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PerformancePriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PerformanceSpread" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuMaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CpuMaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "GpuAccelerating" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CpuBoost" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PowerEfficiency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "EnergySaver" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PerformanceMode" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "SystemStability" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "SystemEfficiency" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "EnergyBoost" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "ThermalManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "ThermalPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CoolingPolicy" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CoolingBoost" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PowerManagement" /t REG_DWORD /d "0" /f
timeout /t 3 /nobreak >nul
cls
goto tweaks

:opcao6
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "CreateGdiPrimaryOnSlaveGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DriverSupportsCddDwmInterop" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncDxAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncGPUAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCreateSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkFreeGpuVirtualAddress" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkOpenSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkShareSwapChainObject" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "SwapChainBackBuffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "TdrResetFromTimeoutAsync" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "NV_SYNC_FRAME_RATE_OVERRIDE" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "Nvidia_InterpolateFramerate" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "NV_PresentInterval" /t REG_DWORD /d 3 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_PREEMPTION_MODE" /t REG_DWORD /d 3 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_FRAME_LATENCY_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_FORCE_FLIP_DISCARD" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_SCALE" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_ALLOW_MODE_SWITCH" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_SWAP_CHAIN_FULLSCREEN_FLIP_MODE" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_ENABLE_UNSAFE_COMMAND_BUFFER_REUSE" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_ENABLE_RUNTIME_DRIVER_OPTIMIZATIONS" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_RESOURCE_ALIGNMENT" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_USE_OPTIMIZED_SWAP_CHAIN" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_PRESENT_RESTART" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "DXGI_CAPTURE_ON_FLIP" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_MULTITHREADED" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D11_MULTITHREADED" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D12_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v "D3D11_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "NV_SYNC_FRAME_RATE_OVERRIDE" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "Nvidia_InterpolateFramerate" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "NV_PresentInterval" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_PREEMPTION_MODE" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_FRAME_LATENCY_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_WAITABLE_OBJECT" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FLIP_DISCARD" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_SCALE" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_ALLOW_MODE_SWITCH" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_FULLSCREEN_FLIP_MODE" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_UNSAFE_COMMAND_BUFFER_REUSE" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_RUNTIME_DRIVER_OPTIMIZATIONS" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_RESOURCE_ALIGNMENT" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_USE_OPTIMIZED_SWAP_CHAIN" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_PRESENT_RESTART" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "DXGI_CAPTURE_ON_FLIP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_MULTITHREADED" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_MULTITHREADED" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_DEFERRED_CONTEXTS" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX\{39A262FC-984B-11ED-9501-806E6F6E6963}" /v "GPMinCores" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX\{39A262FC-984B-11ED-9501-806E6F6E6963}" /v "GPUMaxCores" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX\{39A262FC-984B-11ED-9501-806E6F6E6963}" /v "GPUMinCores1" /t REG_DWORD /d 0 /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NV_SYNC_FRAME_RATE_OVERRIDE" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Nvidia_InterpolateFramerate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NV_PresentInterval" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnSysMemLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnDynamicGranularityPageArrays" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncFrameLock" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncForceActive" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncPerformanceMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableGSyncVRRControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxResourceWaitIdle" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxFlushPerQueue" /t REG_DWORD /d "128" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxWorkPerQueue" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDynamicShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableParallelShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDynamicShaderOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableBatchedGPUWorkQueue" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadFrames" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGpuMemLevel" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalPerformanceOptimizations" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalStreaming" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMemoryManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalAIEnhancements" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMotionBlur" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCompilationThreading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAdvancedShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCachePruning" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCacheEviction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOptimizedShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOfflineShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCacheCompress" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOfflineMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAsyncShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableLTCG" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalGPUScheduling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalLowLatencyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalShaderModel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalVariableRefresh" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMultiFramePipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalVRS" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalDLSS" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDangleFix" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SyncInterval" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExSyncMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffered" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipQueueSize" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipAheadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffering" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipAheadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffering" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateLimterMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCutoff" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SyncRenderedFrames" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowAddDelRenderTargets" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderThreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderAhead" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderThreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCount64" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameLatencyMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderLimit64" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCount:" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PowerMizerPreferPerf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FilterEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Version" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FilterRefreshRate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateLimitHighPrecision" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExImmediate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessBuffering" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessCompatibilityMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessVersion" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothness" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "motionblur" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUPageTableUsage" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "OverrideMSAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MSAACompatibilityMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnhanceAppMSAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferMSAAMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVBObjectEviction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableGBuf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAdaptiveDecimation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableMorphologicalFiltering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SmoothnessType" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MotionVectorInterpolation" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationDelay" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateInterpolation" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableMakeIoMmuAddressValid" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxSwizzleIndex" /t REG_DWORD /d "32" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowNonAlignedMipmaps" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Use64KPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SegmentBalancingPolicy" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RestrictToPreferredSegment" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NbDmaBufferLimitPerDevice" /t REG_DWORD /d "20480" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "LazyDecommitChunkSizeMB" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForegroundTrimInterval" /t REG_DWORD /d "500" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ExpandTo64KBAllocationSizeThreshold" /t REG_DWORD /d "2000" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableZeroFlagInPde" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DecommitRepurposeMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CommitProcessHeapOnDemand" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BudgetThreshold" /t REG_DWORD /d "5" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AlwaysDecommitOnOffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllocateGpuVaFromHighAddresses" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveLinking" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveProgramOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressivePipelineOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveShaderOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMVASReverse" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMSchMicroSched" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMForceGrUcodeLoad" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnableGfxpPoolMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnableAddrtree" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMDisableUnderflow" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "OverlayMode3" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MergeSPR" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMIsoCommitUnallocate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PruningMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PeerMappingOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HdrOverride" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderLoadBalanceFrameInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderLoadBalance" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvGpuUseThreadedAI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionThreshold" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmCompressionMode" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionBlockSize" /t REG_DWORD /d "2000000" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionAlgorithm" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompression" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmDecompressionBackend" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmDecompressionMethod" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMGpuOperationMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMGpcTileMap" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnablePreemptiveZCull" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableOcclusionCulling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableConservativeRaster" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableMSAAResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableCallReduction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CpuDeviceMaskForHwSch" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceSplattedShadowMaps" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableFastBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGenericAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PrefersDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PrefersNonPersistentMSI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGPUFlush" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFakeFullScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipelineFullScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForcePswvb" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullScreenComposition" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferHtileForDecompress" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferDepthResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferTiledResources" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferConservativeRaster" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferMSAAResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferOcclusionCulling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferFifoBatching" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferFifoUi" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchDynamicBatchingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchStaticBatchingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchStaticBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UseFences" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NoExtraBufferRoom" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUQuantum" /t REG_DWORD /d "15" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseSwLockedGpuPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMReclaimLimit" /t REG_DWORD /d "2048" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMReclaimThreshold" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchLatencyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SynchronizeEngineWithFrame" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SchedulingModel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderOptimizationHint" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UsePresentForBlit" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UseSimpleWindowedMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D9ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D10ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D11ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TiledGPUOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D11PreferComputeShader" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableParallelRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncRenderBackBufferCount" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxQueuedAsyncReads" /t REG_DWORD /d "15" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAsyncDataPreload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BackBufferCount" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CSMQualityLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowMpoRenderToBackBuffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceRenderAhead" /t REG_DWORD /d "6" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RenderQualityHint" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ThreadedOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SwapChainTripleBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SetMultiDisplay" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipEx" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SchedulerPriorityLevel" /t REG_DWORD /d "31" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncLoadMaxResourcesPerRequest" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreloadMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreloadPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableBatchedAsyncShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCachePreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadTextureLimit" /t REG_DWORD /d "1024" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionSharpness" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionSmoothness" /t REG_DWORD /d "100" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversion" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationPeriod" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationQuality" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateExtrapolation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxGBufferRequests" /t REG_DWORD /d "512" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxGBufferSections" /t REG_DWORD /d "32" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GBufferOptimization" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GBufferFormat" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDeferredRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePrePasses" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePostRenderedAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableForwardRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableSplitFrameRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingPreload" /t REG_DWORD /d "2048" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingDeferred" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingMultithreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreaming" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePreloadRange" /t REG_DWORD /d "500" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "LowLatencySwapchain" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableCompression" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVideoMemoryFlags" /t REG_DWORD /d "3302" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUSchedulerEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceLowPrecisionFloat" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForcePixelShaderSoftwareNoOpt" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVertexShaderSoftwareNoOpt" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceNVWarpShader" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullScreenMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceMipmapsEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceSync" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceQualityLevel" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceMultiSampling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGenericCPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePreload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MPSReadAhead" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceTripleBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MultiBuffering" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePreRenderedFrames" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderLimit" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableDXGI1_2" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableUpdateDMABuf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableAsyncPresent" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableLowLatencyPresentation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExUseSwapChain" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameTimingSyncMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NV_SYNC_FRAME_RATE_OVERRIDE" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Nvidia_InterpolateFramerate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NV_PresentInterval" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnSysMemLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnDynamicGranularityPageArrays" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncFrameLock" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncForceActive" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GSyncPerformanceMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableGSyncVRRControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxResourceWaitIdle" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxFlushPerQueue" /t REG_DWORD /d "128" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BatchMaxWorkPerQueue" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDynamicShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableParallelShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDynamicShaderOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableBatchedGPUWorkQueue" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadFrames" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGpuMemLevel" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalPerformanceOptimizations" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalStreaming" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMemoryManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalAIEnhancements" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMotionBlur" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCompilationThreading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAdvancedShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCachePruning" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCacheEviction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOptimizedShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOfflineShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCacheCompress" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableOfflineMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAsyncShaderCompilation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableLTCG" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalGPUScheduling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalLowLatencyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalShaderModel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalVariableRefresh" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalMultiFramePipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalVRS" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableExperimentalDLSS" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDangleFix" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SyncInterval" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExSyncMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffered" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipQueueSize" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipAheadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffering" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipAheadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExBuffering" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateLimterMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCutoff" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SyncRenderedFrames" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowAddDelRenderTargets" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderThreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderAhead" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderThreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCount64" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameLatencyMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderLimit64" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderFrameCount:" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PowerMizerPreferPerf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FilterEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Version" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FilterRefreshRate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateLimitHighPrecision" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExImmediate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessBuffering" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessCompatibilityMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothnessVersion" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SilkSmoothness" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "motionblur" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUPageTableUsage" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "OverrideMSAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MSAACompatibilityMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnhanceAppMSAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferMSAAMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVBObjectEviction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableGBuf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAdaptiveDecimation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableMorphologicalFiltering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SmoothnessType" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MotionVectorInterpolation" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationDelay" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateInterpolation" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableMakeIoMmuAddressValid" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxSwizzleIndex" /t REG_DWORD /d "32" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowNonAlignedMipmaps" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "Use64KPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SegmentBalancingPolicy" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RestrictToPreferredSegment" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NbDmaBufferLimitPerDevice" /t REG_DWORD /d "20480" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "LazyDecommitChunkSizeMB" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForegroundTrimInterval" /t REG_DWORD /d "500" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ExpandTo64KBAllocationSizeThreshold" /t REG_DWORD /d "2000" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableZeroFlagInPde" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DecommitRepurposeMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CommitProcessHeapOnDemand" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BudgetThreshold" /t REG_DWORD /d "5" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AlwaysDecommitOnOffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllocateGpuVaFromHighAddresses" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveLinking" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveProgramOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressivePipelineOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseAggressiveShaderOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMVASReverse" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMSchMicroSched" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMForceGrUcodeLoad" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnableGfxpPoolMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMEnableAddrtree" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMDisableUnderflow" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "OverlayMode3" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MergeSPR" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMIsoCommitUnallocate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PruningMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PeerMappingOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HdrOverride" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderLoadBalanceFrameInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderLoadBalance" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvGpuUseThreadedAI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionThreshold" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmCompressionMode" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionBlockSize" /t REG_DWORD /d "2000000" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompressionAlgorithm" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmMemoryCompression" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmDecompressionBackend" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NvMmDecompressionMethod" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMGpuOperationMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMGpcTileMap" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnablePreemptiveZCull" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableOcclusionCulling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableConservativeRaster" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableMSAAResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableCallReduction" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CpuDeviceMaskForHwSch" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceSplattedShadowMaps" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchEnableFastBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGenericAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PrefersDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PrefersNonPersistentMSI" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGPUFlush" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFakeFullScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipelineFullScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForcePswvb" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullScreenComposition" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferHtileForDecompress" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferDepthResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferTiledResources" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferConservativeRaster" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferMSAAResolve" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferOcclusionCulling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferFifoBatching" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreferFifoUi" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchDynamicBatchingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchStaticBatchingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchStaticBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchDynamicBatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UseFences" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "NoExtraBufferRoom" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUQuantum" /t REG_DWORD /d "15" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMUseSwLockedGpuPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMReclaimLimit" /t REG_DWORD /d "2048" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RMReclaimThreshold" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "HwSchLatencyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SynchronizeEngineWithFrame" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SchedulingModel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderOptimizationHint" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UsePresentForBlit" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "UseSimpleWindowedMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D9ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D10ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D11ResidencyStrictness" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TiledGPUOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "D3D11PreferComputeShader" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableParallelRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CsmtEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncRenderBackBufferCount" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxQueuedAsyncReads" /t REG_DWORD /d "15" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableAsyncDataPreload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "BackBufferCount" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "CSMQualityLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AllowMpoRenderToBackBuffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceRenderAhead" /t REG_DWORD /d "6" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "RenderQualityHint" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ThreadedOptimization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SwapChainTripleBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SetMultiDisplay" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipEx" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "SchedulerPriorityLevel" /t REG_DWORD /d "31" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "AsyncLoadMaxResourcesPerRequest" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreloadMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreloadPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableBatchedAsyncShaderCompile" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableShaderCachePreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadTextureLimit" /t REG_DWORD /d "1024" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloadFrames" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ShaderPreloading" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionSharpness" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionSmoothness" /t REG_DWORD /d "100" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversionMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateConversion" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationPeriod" /t REG_DWORD /d "8" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationQuality" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "InterpolationControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameRateExtrapolation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxGBufferRequests" /t REG_DWORD /d "512" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MaxGBufferSections" /t REG_DWORD /d "32" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GBufferOptimization" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GBufferFormat" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableDeferredRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePrePasses" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePostRenderedAA" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableForwardRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableSplitFrameRendering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingPreload" /t REG_DWORD /d "2048" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingDeferred" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreamingMultithreaded" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TextureStreaming" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePreloadRange" /t REG_DWORD /d "500" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "LowLatencySwapchain" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnableCompression" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVideoMemoryFlags" /t REG_DWORD /d "3302" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUSchedulerEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceLowPrecisionFloat" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForcePixelShaderSoftwareNoOpt" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceVertexShaderSoftwareNoOpt" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceNVWarpShader" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceFullScreenMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceMipmapsEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceSync" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceQualityLevel" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceMultiSampling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceCompositionPipeline" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceGenericCPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "GPUPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePreload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MPSReadAhead" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "TexturePatching" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "ForceTripleBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "MultiBuffering" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "EnablePreRenderedFrames" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "PreRenderLimit" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableDXGI1_2" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableUpdateDMABuf" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableAsyncPresent" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "DisableLowLatencyPresentation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FlipExUseSwapChain" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX" /v "FrameTimingSyncMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "CreateGdiPrimaryOnSlaveGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DriverSupportsCddDwmInterop" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncDxAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncGPUAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCreateSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkFreeGpuVirtualAddress" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkOpenSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkShareSwapChainObject" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "SwapChainBackBuffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "TdrResetFromTimeoutAsync" /t REG_DWORD /d "1" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_2203&SUBSYS_F29510B0&REV_A1\4&23b96b75&0&0008\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_2203&SUBSYS_F29510B0&REV_A1\4&23b96b75&0&0008\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED9" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED10" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED11" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED12" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED13" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED14" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED15" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED16" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED17" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED18" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED19" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED20" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED21" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED22" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED23" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED24" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED25" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED26" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED27" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED28" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED29" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED30" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_RESERVED31" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVA_FILMGRAINBUFFER" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MOTIONVECTORBUFFER" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DXVACOMPBUFFER_MAX" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "CreateGdiPrimaryOnSlaveGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DriverSupportsCddDwmInterop" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncDxAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncGPUAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCreateSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkFreeGpuVirtualAddress" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkOpenSwapChain" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkShareSwapChainObject" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "SwapChainBackBuffer" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "TdrResetFromTimeoutAsync" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "AllowAsync" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableAGPSupport" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableAGPSupport" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "UseNonLocalVidMem" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "UseNonLocalVidMem" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulationOnly" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulatePointSprites" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulatePointSprites" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "ForceRgbRasterizer" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "ForceRgbRasterizer" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulateStateBlocks" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulateStateBlocks" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "EnableDebugging" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FullDebug" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableDM" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "EnableMultimonDebugging" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "LoadDebugRuntime" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumReference" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumReference" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumRamp" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumRamp" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumNullDevice" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumNullDevice" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FewVertices" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "FewVertices" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableMMX" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableMMX" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableMMX" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "DisableMMX" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "MMX Fast Path" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MMXFastPath" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "MMXFastPath" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "UseMMXForRGB" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D" /v "UseMMXForRGB" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "UseMMXForRGB" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "UseMMXForRGB" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "ForceNoSysLock" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "ForceNoSysLock" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f
timeout /t 3 /nobreak >nul
cls
goto :tweaks

:opcao7 
cls
fsutil behavior set memoryusage 2
fsutil behavior set mftzone 4
fsutil behavior set disablelastaccess 1
fsutil behavior set disabledeletenotify 0
fsutil behavior set encryptpagingfile 0
timeout /t 3 /nobreak >nul
cls
goto tweaks

:opcao8

cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogProfileOffset" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableAutoBoost" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
timeout /t 3 /nobreak >nul
cls
goto :tweaks

:opcao9
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{01578F96-C270-4602-ADE0-578D9C29FC0C}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{0BD3506A-9030-4F76-9B88-3E8FE1F7CFB6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{12d25187-6c0d-4783-ad3a-84caa135acfd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{15A7A4F8-0072-4EAB-ABAD-F98A4D666AED}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{1C95126E-7EEA-49A9-A3FE-A378B03DDB4D}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{1E39B4CE-D1E6-46CE-B65B-5AB05D6CC266}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{2F07E2EE-15DB-40F1-90EF-9D7BA282188A}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{314DE49F-CE63-4779-BA2B-D616F6963A88}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{315a8872-923e-4ea2-9889-33cd4754bf64}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{3CB40AAA-1145-4FB8-B27B-7E30F0454316}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{3EB875EB-8F4A-4800-A00B-E484C97D7551}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{43D1A55C-76D6-4F7E-995C-64C711E5CAFE}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{63B530F8-29C9-4880-A5B4-B8179096E7B8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{67D07935-283A-4791-8F8D-FA9117F3E6F2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{6A1F2B00-6A90-4C38-95A5-5CAB3B056778}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{7868B0D4-1423-4681-AFDF-27913575441E}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{88CD9180-4491-4640-B571-E3BEE2527943}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{9580D7DD-0379-4658-9870-D5BE7D52D6DE}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{A6BF0DEB-3659-40AD-9F81-E25AF62CE3C7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{AB0D8EF9-866D-4D39-B83F-453F3B8F6325}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{CDEAD503-17F5-4A3E-B7AE-DF8CC2902EB9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{DF271536-4298-45E1-B0F2-E88F78619C5D}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{e6835967-e0d2-41fb-bcec-58387404e25a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog\{FBCFAC3F-8459-419F-8E48-1F0B49CDB85E}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{0063715b-eeda-4007-9429-ad526f62696e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{11CD958A-C507-4EF3-B3F2-5FD9DFBD2C78}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{30336ed4-e327-447c-9de0-51b652c86108}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{331c3b3a-2005-44c2-ac5e-77220c37d6b4}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{530FB9B9-C515-4472-9313-FB346F9255E3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-0CC6-49da-8CD9-8903A5222AA0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-77B8-4ba8-9474-4F4A9DB2F5C6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-8670-4eb6-B535-3B9D6BB222FD}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-997F-49cf-B49F-ECC50184B75D}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-C8AE-4f93-9CA1-683A53E20CB6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{75EBC33E-D017-4D0F-93AB-0B4F86579164}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{B9DA9FE6-AE5F-4f3e-B2FA-8E623C11DC75}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{C553CED4-9BA3-478F-98EA-906CE99C2E4F}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{f0be35f8-237b-4814-86b5-ade51192e503}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform\{f5dbaa02-15d6-4644-a784-7032d508bf64}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{19E464A4-7408-49BD-B960-53446AE47820}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{19E93940-A1BD-497F-BC58-CA333880BAB4}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{3048407B-56AA-4D41-82B2-7d5F4b1CDD39}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{402E812D-04E6-4E66-ABDB-32E5F79D36A2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{49868e3d-77fb-5083-9e09-61e3f37e0309}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{62A0EB6C-3E3E-471d-960C-7C574A72534C}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{6d5ca4bb-df8e-41bc-b554-8aeab241f206}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{6fb61ac3-3455-4da4-8313-c1a855ee64c5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{836767A6-AF31-4938-B4C0-EF86749A9AEF}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{9558985e-3bc8-45ef-a2fd-2e6ff06fb886}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{99F5F45C-FD1E-439F-A910-20D0DC759D28}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{acf1e4a7-9241-4fbf-9555-c27638434f8d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{B795C7DF-07BC-4362-938E-E8ABD81A9A01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A01-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A02-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A03-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A05-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A9E-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger\{C9BF4A9F-D547-4d11-8242-E03A18B5BE01}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{047FB417-39E6-4B79-A52C-C436B60011AD}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{0BD3506A-9030-4f76-9B88-3E8FE1F7CFB6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{111ffc99-3987-4bf8-8398-61853120cb3d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{1193FF07-26A3-4ECA-9384-12CCF39CAE03}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{21ba7b61-05f8-41f1-9048-c09493dcfe38}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{2D0CC56C-874F-422C-B25F-246F286A24BA}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{314DE49F-CE63-4779-BA2B-D616F6963A88}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{3496b396-5c43-45e7-b38e-d509b79ae721}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{3D42A67D-9CE8-4284-B755-2550672B0CE0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{4D946A46-275B-4C9D-B835-0B2160559256}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{58980F4B-BD39-4a3e-B344-492ED2254A4E}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{5CA18737-22AC-4050-85BC-B8DBB9F7D986}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{681E3481-7510-4053-8C87-A6305EAFC4FA}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{6BE684E4-194C-43B0-B9B8-8269646DE989}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{6eb8db94-fe96-443f-a366-5fe0cee7fb1c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{7D7180B3-A452-4FFF-8D1F-7B32B248AB70}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{802ec45b-1e99-4b83-9920-87c98277ba9d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{814182FF-58F7-11E1-853C-78E7D1CA7337}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{90BBBABB-255B-4FE3-A06F-685A15E93A4C}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{914598a6-28f0-42ac-bf3d-a29c6047a739}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{949D7457-6151-4FA0-9E46-D82A6F9927CF}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{9580d7dd-0379-4658-9870-d5be7d52d6de}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{999AC137-42DC-41D3-BA9D-A325A9E1A986}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{9B322459-4AD9-4F81-8EEA-DC77CDD18CA6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{9B694F87-000E-4BE6-91AC-FE2E50D61A6F}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{9CC0413E-5717-4af5-82EB-6103D8707B45}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{9CC9BEB7-9D24-47C7-8F9D-CCC9DCAC29EB}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{AB0D8EF9-866D-4d39-B83F-453F3B8F6325}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{abe47285-c002-46d1-95e4-c4aec3c78f50}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{B8794785-F7E3-4C2D-A33D-7B0BA0D30E18}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{c02edc8d-d627-46c9-abd9-c8b78f88c223}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{C100BECE-D33A-4A4B-BF23-BBEF4663D017}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{c7491fe4-66f4-4421-9954-b55f03db3186}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{D28262A1-8066-492D-BCE8-635DA75368B7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{E5C16D49-2464-4382-BB20-97A4B5465DB9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\{e6dec100-4e0f-4927-92be-e69d7c15c821}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{01979c6a-42fa-414c-b8aa-eee2c8202018}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{04268430-d489-424d-b914-0cff741d6684}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{059f0f37-910e-4ff0-a7ee-ae8d49dd319b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{05f02597-fe85-4e67-8542-69567ab8fd4f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{06edcfeb-0fd0-4e53-acca-a6f8bbf81bcb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0b886108-1899-4d3a-9c0d-42d8fc4b9108}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0b9fdccc-451c-449c-9bd8-6756fcc6091a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0bf2fb94-7b60-4b4d-9766-e82f658df540}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0c478c5b-0351-41b1-8c58-4a6737da32e3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0d4fdc09-8c27-494a-bda0-505e4fd8adae}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0f67e49f-fe51-4e9f-b490-6f2948cc6027}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{0fa2ee03-1feb-5057-3bb3-eb25521b8482}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{11c5d8ad-756a-42c2-8087-eb1b4a72a846}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{11cd958a-c507-4ef3-b3f2-5fd9dfbd2c78}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{125f2cf1-2768-4d33-976e-527137d080f8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{15a7a4f8-0072-4eab-abad-f98a4d666aed}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{15ca44ff-4d7a-4baa-bba5-0998955e531e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{199fe037-2b82-40a9-82ac-e1d46c792b99}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1b562e86-b7aa-4131-badc-b6f3a001407e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1b6b0772-251b-4d42-917d-faca166bc059}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1c95126e-7eea-49a9-a3fe-a378b03ddb4d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1db28f2e-8f80-4027-8c5a-a11f7f10f62d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1e9a4978-78c2-441e-8858-75b5d1326bc5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{1f678132-5938-4686-9fdc-c8ff68f15c85}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{206f6dea-d3c5-4d10-bc72-989f03c8b84b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{21b7c16e-c5af-4a69-a74a-7245481c1b97}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{2a274310-42d5-4019-b816-e4b8c7abe95c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{2e35aaeb-857f-4beb-a418-2e6c0e54d988}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{2e6cb42e-161d-413b-a6c1-84ca4c1e5890}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{2f07e2ee-15db-40f1-90ef-9d7ba282188a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{2ff3e6b7-cb90-4700-9621-443f389734ed}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{306c4e0b-e148-543d-315b-c618eb93157c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{30e1d284-5d88-459c-83fd-6345b39b19ec}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{331c3b3a-2005-44c2-ac5e-77220c37d6b4}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{355c44fe-0c8e-4bf8-be28-8bc7b5a42720}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3629dd4d-d6f1-4302-a623-0768b51501c7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{36c23e18-0e66-11d9-bbeb-505054503030}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3903d5b9-988d-4c31-9ccd-4022f96703f0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3cb2a168-fe19-4a4e-bdad-dcf422f13473}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3e59a529-b0b3-4a11-8129-9ffe6bb46eb9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3f471139-acb7-4a01-b7a7-ff5da4ba2d43}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{3ff37a1c-a68d-4d6e-8c9b-f79e8b16c482}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{40783728-8921-45d0-b231-919037b4b4fd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{412bdff2-a8c4-470d-8f33-63fe0d8c20e2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{43e63da5-41d1-4fbf-aded-1bbed98fdd1d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{45eec9e5-4a1b-5446-7ad8-a4ab1313c437}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{46c78e5c-a213-46a8-8a6b-622f6916201d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{47bc9477-a8ba-452e-b951-4f2ed3593cf9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{47bfa2b7-bd54-4fac-b70b-29021084ca8f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{494e7a3d-8db9-4ec4-b43e-2844af6e38d6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{4af188ac-e9c4-4c11-b07b-1fabc07dfeb2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{4cb314df-c11f-47d7-9c04-65fb0051561b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{4cec9c95-a65f-4591-b5c4-30100e51d870}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{4ee76bd8-3cf4-44a0-a0ac-3937643e37a3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{52fc89f8-995e-434c-a91e-199986449890}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{530fb9b9-c515-4472-9313-fb346f9255e3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{538cbbad-4877-4eb2-b26e-7caee8f0f8cb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{54cb22ff-26b4-4393-a8c2-6b0715912c5f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{555908d1-a6d7-4695-8e1e-26931d2012f4}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{55ab77f6-fa04-43ef-af45-688fbf500482}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{595f7f52-c90a-4026-a125-8eb5e083f15e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{5d674230-ca9f-11da-a94d-0800200c9a66}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{5d896912-022d-40aa-a3a8-4fa5515c76d7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{5f92bc59-248f-4111-86a9-e393e12c6139}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{62de9e48-90c6-4755-8813-6a7d655b0802}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{632f767e-0ec3-47b9-ba1c-a0e62a74728a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{63d1e632-95cc-4443-9312-af927761d52a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{64ef2b1c-4ae1-4e64-8599-1636e441ec88}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{651df93b-5053-4d1e-94c5-f6e6d25908d0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{66a5c15c-4f8e-4044-bf6e-71d896038977}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{67fe2216-727a-40cb-94b2-c02211edb34a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{6a1f2b00-6a90-4c38-95a5-5cab3b056778}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{6b93bf66-a922-4c11-a617-cf60d95c133d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{6bba3851-2c7e-4dea-8f54-31e5afd029e3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7237fff9-a08a-4804-9c79-4a8704b70b87}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{72cd9ff7-4af8-4b89-aede-5f26fda13567}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{73a33ab2-1966-4999-8add-868c41415269}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{73e9c9de-a148-41f7-b1db-4da051fdc327}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{74c2135f-cc76-45c3-879a-ef3bb1eeaf86}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{75ebc33e-997f-49cf-b49f-ecc50184b75d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7725b5f9-1f2e-4e21-baeb-b2af4690bc87}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7b563579-53c8-44e7-8236-0f87b9fe6594}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7b6bc78c-898b-4170-bbf8-1a469ea43fc5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7d5387b0-cbe0-11da-a94d-0800200c9a66}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{7da4fe0e-fd42-4708-9aa5-89b77a224885}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{85a62a0d-7e17-485f-9d4f-749a287193a6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{89203471-d554-47d4-bde4-7552ec219999}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{89592015-d996-4636-8f61-066b5d4dd739}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{89fe8f40-cdce-464e-8217-15ef97d4c7c3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{8c416c79-d49b-4f01-a467-e56d3aa8234c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{8e6a5303-a4ce-498f-afdb-e03a8a82b077}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{945a8954-c147-4acd-923f-40c45405a658}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{951b41ea-c830-44dc-a671-e2c9958809b8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{95353826-4fbe-41d4-9c42-f521c6e86360}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9580d7dd-0379-4658-9870-d5be7d52d6de}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{96f4a050-7e31-453c-88be-9634f4e02139}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9741fd4e-3757-479f-a3c6-fc49f6d5edd0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{988c59c5-0a1c-45b6-a555-0c62276e327d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{991f8fe6-249d-44d6-b93d-5a3060c1dedb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9988748e-c2e8-4054-85f6-0c3e1cad2470}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9c205a39-1250-487d-abd7-e831c6290539}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9f650c63-9409-453c-a652-83d7185a2e83}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{9f7b5df4-b902-48bc-bc94-95068c6c7d26}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a0e3d8ea-c34f-4419-a1db-90435b8b21d0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a4445c76-ed85-c8a3-02c1-532a38614a9e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a67075c2-3e39-4109-b6cd-6d750058a731}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a68ca8b7-004f-d7b6-a698-07e2de0f1f5d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a6ad76e3-867a-4635-91b3-4904ba6374d7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a7f2235f-be51-51ed-decf-f4498812a9a2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{a8a1f2f6-a13a-45e9-b1fe-3419569e5ef2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{aa3aa23b-bb6d-425a-b58c-1d7e37f5d02a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{abf1f586-2e50-4ba8-928d-49044e6f0db7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ac43300d-5fcc-4800-8e99-1bd3f85f0320}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ac52ad17-cc01-4f85-8df5-4dce4333c99b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ad5162d8-daf0-4a25-88a7-01cbeb33902e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ae4bd3be-f36f-45b6-8d21-bdd6fb832853}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{aea1b4fa-97d1-45f2-a64c-4d69fffd92c9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{aec5c129-7c10-407d-be97-91a042c61aaa}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{b0aa8734-56f7-41cc-b2f4-de228e98b946}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{b2fcd41f-9a40-4150-8c92-b224b7d8c8aa}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{b675ec37-bdb6-4648-bc92-f3fdc74d3ca2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{b977cf02-76f6-df84-cc1a-6a4b232322b6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{b99317e5-89b7-4c0d-abd1-6e705f7912dc}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ba093605-3909-4345-990b-26b746adee0a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ba2ffb5c-e20a-4fb9-91b4-45f61b4b66a0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{babda89a-4d5e-48eb-af3d-e0e8410207c0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{bc0669e1-a10d-4a78-834e-1ca3c806c93b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c02afc2b-e24e-4449-ad76-bcc2c2575ead}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c03715ce-ea6f-5b67-4449-da1d1e1afeb8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c18672d1-dc18-4dfd-91e4-170cf37160cf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c26c4f3c-3f66-4e99-8f8a-39405cfed220}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c4636a1e-7986-4646-bf10-7bc3b4a76e8e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c76baa63-ae81-421c-b425-340b4b24157f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{c914f0df-835a-4a22-8c70-732c9a80c634}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cb017cd2-1f37-4e65-82bc-3e91f6a37559}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cbda4dbf-8d5d-4f69-9578-be14aa540d22}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cd9c6198-bf73-4106-803b-c17d26559018}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cdc05e28-c449-49c6-b9d2-88cf761644df}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cdead503-17f5-4a3e-b7ae-df8cc2902eb9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ce8dee0b-d539-4000-b0f8-77bed049c590}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{cfc18ec0-96b1-4eba-961b-622caee05b0a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{d0e22efc-ac66-4b25-a72d-382736b5e940}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{d1bc9aff-2abf-4d71-9146-ecb2a986eb85}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{d48ce617-33a2-4bc3-a5c7-11aa4f29619e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{d5c25f9a-4d47-493e-9184-40dd397a004d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{d6f68875-cdf5-43a5-a3e3-53ffd683311c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{dbe9b383-7cf3-4331-91cc-a3cb16a3b538}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{dd70bc80-ef44-421b-8ac3-cd31da613a4e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{de29cf61-5ee6-43ff-9aac-959c4e13cc6c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{de7b24ea-73c8-4a09-985d-5bdadcfa9017}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{dea07764-0790-44de-b9c4-49677b17174f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e104fb41-6b04-4f3a-b47d-f0df2f02b954}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e2816346-87f4-4f85-95c3-0c79409aa89d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e3bac9f8-27be-4823-8d7f-1cc320c05fa7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e4480490-85b6-11dd-ad8b-0800200c9a66}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e4f68870-5ae8-4e5b-9ce7-ca9ed75b0245}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e595f735-b42a-494b-afcd-b68666945cd3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e5ba83f6-07d0-46b1-8bc7-7e669a1d31dc}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e670a5a2-ce74-4ab4-9347-61b815319f4c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{e8f9af91-afbe-5a03-dfec-5d591686326c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ea216962-877b-5b73-f7c5-8aef5375959e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{eee173ef-7ed2-45de-9877-01c70a852fbd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{ef1cc15b-46c1-414e-bb95-e76b077bd51e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f029ac39-38f0-4a40-b7de-404d244004cb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f2e2ce31-0e8a-4e46-a03b-2e0fe97e93c2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f3c5e28e-63f6-49c7-a204-e48a1bc4b09d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f5d05b38-80a6-4653-825d-c414e4ab3c68}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f708c483-4880-11e6-9121-5cf37068b67b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f717d024-f5b4-4f03-9ab9-331b2dc38ffb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{f9fe3908-44b8-48d9-9a32-5a763ff5ed79}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{fae10392-f0af-4ac0-b8ff-9f4d920c3cdf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{fc4e8f51-7a04-4bab-8b91-6321416f72ab}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{fc65ddd8-d6ef-4962-83d5-6e5cfe9ce148}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System\{fcbb06bb-6a2a-46e3-abaa-246cb4e508b2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{01090065-b467-4503-9b28-533766761087}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{06edcfeb-0fd0-4e53-acca-a6f8bbf81bcb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{08466062-aed4-4834-8b04-cddb414504e5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{0888e5ef-9b98-4695-979d-e92ce4247224}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{09608c12-c1da-4104-a6fe-b959cf57560a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{09ac07b9-6ac9-43bc-a50f-58419a797c69}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{09ec9687-d7ad-40ca-9c5e-78a04a5ae993}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{0dd4d48e-2bbf-452f-a7ec-ba3dba8407ae}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{0ff1c24b-7f05-45c0-abdc-3c8521be4f62}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{10a208dd-a372-421c-9d99-4fad6db68b62}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1139c61b-b549-4251-8ed3-27250a1edec8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{11a75546-3234-465e-bec8-2d301cb501ac}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{126cdb97-d346-4894-8a34-658da5eea1b6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{134ea407-755d-4a93-b8a6-f290cd155023}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{13bc4371-4e21-4e46-a84f-8c0ffb548ced}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1418ef04-b0b4-4623-bf7e-d74ab47bbdaa}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{15a7a4f8-0072-4eab-abad-f98a4d666aed}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1b8b402d-78dc-46fb-bf71-46e64aedf165}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1bda2ab1-bbc1-4acb-a849-c0ef2b249672}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1db28f2e-8f80-4027-8c5a-a11f7f10f62d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1ed6976a-4171-4764-b415-7ea08bc46c51}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{1edeee53-0afe-4609-b846-d8c0b2075b1f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{21d79db0-8e03-41cd-9589-f3ef7001a92a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{23b8d46b-67dd-40a3-b636-d43e50552c6d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{27a8c1e2-eb19-463e-8424-b399df27a216}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{287d59b6-79ba-4741-a08b-2fedeede6435}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{28aa95bb-d444-4719-a36f-40462168127e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{28e25b07-c47f-473d-8b24-2e171cca808a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2a45d52e-bbf3-4843-8e18-b356ed5f6a65}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2a576b87-09a7-520e-c21a-4942f0271d67}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2cd58181-0bb6-463e-828a-056ff837f966}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2d318b91-e6e7-4c46-bd04-bfe6db412cf9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2ed299d2-2f6b-411d-8d15-f4cc6fde0c70}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{2f94e1cc-a8c5-4fe7-a1c3-53d7bda8e73e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{30336ed4-e327-447c-9de0-51b652c86108}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{314de49f-ce63-4779-ba2b-d616f6963a88}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{315a8872-923e-4ea2-9889-33cd4754bf64}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{319122a9-1485-4e48-af35-7db2d93b8ad2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{32254f6c-aa33-46f0-a5e3-1cbcc74bf683}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3527cb55-1298-49d4-ab94-1243db0fcaff}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3663a992-84be-40ea-bba9-90c7ed544222}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{36c23e18-0e66-11d9-bbeb-505054503030}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3a5bef13-d0f7-4e7f-9ec8-5e707df711d0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3a718a68-6974-4075-abd3-e8243caef398}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3aa52b8b-6357-4c18-a92e-b53fb177853b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3ae1ea61-c002-47fb-b06c-4022a8c98929}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3c088e51-65be-40d1-9b90-62bfec076737}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3cb40aaa-1145-4fb8-b27b-7e30f0454316}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3cc2d4af-da5e-4ed4-bcbe-3cf995940483}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3d42a67d-9ce8-4284-b755-2550672b0ce0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3da494e4-0fe2-415c-b895-fb5265c5c83b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{3f471139-acb7-4a01-b7a7-ff5da4ba2d43}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{40ab57c2-1c53-4df9-9324-ff7cf898a02c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{41862974-da3b-4f0b-97d5-bb29fbb9b71e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{442c11c5-304b-45a4-ae73-dc2194c4e876}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{46098845-8a94-442d-9095-366a6bcfefa9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{4a104570-ec6d-4560-a40f-858fa955e84f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{4a933674-fb3d-4e8d-b01d-17ee14e91a3e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{4cb314df-c11f-47d7-9c04-65fb0051561b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{4de9bc9c-b27a-43c9-8994-0915f1a5e24f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{4eacb4d0-263b-4b93-8cd6-778a278e5642}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{50df9e12-a8c4-4939-b281-47e1325ba63e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{50f99b2d-96d2-421f-be4c-222c4140da9f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{530fb9b9-c515-4472-9313-fb346f9255e3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5402e5ea-1bdd-4390-82be-e108f1e634f5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{54164045-7c50-4905-963f-e5bc1eef0cca}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{57003e21-269b-4bdc-8434-b3bf8d57d2d5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{579402a2-883c-45d8-b70a-9bc856407751}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{58980f4b-bd39-4a3e-b344-492ed2254a4e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{595f33ea-d4af-4f4d-b4dd-9dacdd17fc6e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5b0a651a-8807-45cc-9656-7579815b6af0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5b5ab841-7d2e-4a95-bb4f-095cdf66d8f0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5bbca4a8-b209-48dc-a8c7-b23d3e5216fb}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5d674230-ca9f-11da-a94d-0800200c9a66}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5d896912-022d-40aa-a3a8-4fa5515c76d7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5ec13d8e-4b3f-422e-a7e7-3121a1d90c7a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{5f0e257f-c224-43e5-9555-2adcb8540a58}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{63b530f8-29c9-4880-a5b4-b8179096e7b8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{63d2bb1d-e39a-41b8-9a3d-52dd06677588}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6489b27f-7c43-5886-1d00-0a61bb2a375b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{64a98c25-9e00-404e-84ad-6700dfe02529}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{64ef2b1c-4ae1-4e64-8599-1636e441ec88}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{66a5c15c-4f8e-4044-bf6e-71d896038977}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{67d07935-283a-4791-8f8d-fa9117f3e6f2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{699e309c-e782-4400-98c8-e21d162d7b7b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{69c8ca7e-1adf-472b-ba4c-a0485986b9f6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6a1f2b00-6a90-4c38-95a5-5cab3b056778}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6b1ffe48-5b1e-4793-9f7f-ae926454499d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6d7662a9-034e-4b1f-a167-67819c401632}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6d8a3a60-40af-445a-98ca-99359e500146}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6df57621-e7e4-410f-a7e9-e43eeb61b11f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6e400999-5b82-475f-b800-cef6fe361539}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{6eb8db94-fe96-443f-a366-5fe0cee7fb1c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{712abb2d-d806-4b42-9682-26da01d8b307}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{72561cf0-c85c-4f78-9e8d-cba9093df62d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{728b02d9-bf21-49f6-be3f-91bc06f7467e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{72d211e1-4c54-4a93-9520-4901681b2271}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{73370bd6-85e5-430b-b60a-fea1285808a7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{741bb90c-a7a3-49d6-bd82-1e6b858403f7}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{741fc222-44ed-4ba7-98e3-f405b2d2c4b4}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{747ef6fd-e535-4d16-b510-42c90f6873a1}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-0870-49e5-bdce-9d7028279489}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-0936-4a55-9d26-5f298f3180bf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-0cc6-49da-8cd9-8903a5222aa0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-77b8-4ba8-9474-4f4a9db2f5c6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-8670-4eb6-b535-3b9d6bb222fd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-997f-49cf-b49f-ecc50184b75d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{75ebc33e-c8ae-4f93-9ca1-683a53e20cb6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{76ab12d5-c986-4e60-9d7c-2a092b284cdd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{770ca594-b467-4811-b355-28f5e5706987}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{777ba8fe-2498-4875-933a-3067de883070}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{7d29d58a-931a-40ac-8743-48c733045548}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{7d7b0c39-93f6-4100-bd96-4dda859652c5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{7e58e69a-e361-4f06-b880-ad2f4b64c944}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{7e87506f-bace-4bf1-bc09-3a1f37045c71}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{7eafcf79-06a7-460b-8a55-bd0a0c9248aa}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{8127f6d4-59f9-4abf-8952-3e3a02073d5f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{83d6e83b-900b-48a3-9835-57656b6f6474}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{8530db6e-51c0-43d6-9d02-a8c2088526cd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{85a62a0d-7e17-485f-9d4f-749a287193a6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{85be49ea-38f1-4547-a604-80060202fb27}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{85fe7609-ff4a-48e9-9d50-12918e43e1da}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{88c09888-118d-48fc-8863-e1c6d39ca4df}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{88cd9180-4491-4640-b571-e3bee2527943}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{8939299f-2315-4c5c-9b91-abb86aa0627d}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{89592015-d996-4636-8f61-066b5d4dd739}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{89a2278b-c662-4aff-a06c-46ad3f220bca}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{89b1e9f0-5aff-44a6-9b44-0a07a7ce5845}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{8bcdf442-3070-4118-8c94-e8843be363b3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{8ce93926-bdae-4409-9155-2fe4799ef4d3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{906b8a99-63ce-58d7-86ab-10989bbd5567}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{91f5fb12-fdea-4095-85d5-614b495cd9de}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9213c3e1-0d6c-52dd-78ea-f3b082111406}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9363ccd9-d429-4452-9adb-2501e704b810}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{93a19ab3-fb2c-46eb-91ef-56b0a318b983}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{952773bf-c2b7-49bc-88f4-920744b82c43}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{95353826-4fbe-41d4-9c42-f521c6e86360}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9580d7dd-0379-4658-9870-d5be7d52d6de}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{968f313b-097f-4e09-9cdd-bc62692d138b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{96f4a050-7e31-453c-88be-9634f4e02139}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{973143dd-f3c7-4ef5-b156-544ac38c39b6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{97ca8142-10b1-4baa-9fbb-70a7d11231c3}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9803daa0-81ba-483a-986c-f0e395b9f8d1}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{98bf1cd3-583e-4926-95ee-a61bf3f46470}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{98e0765d-8c42-44a3-a57b-760d7f93225a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9c2a37f3-e5fd-5cae-bcd1-43dafeee1ff0}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9cc0413e-5717-4af5-82eb-6103d8707b45}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9d55b53d-449b-4824-a637-24f9d69aa02f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9f973c1d-d056-4e38-84a5-7be81cdd6ab6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{9fc66dd7-98c7-4b83-8293-46a18439b03b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{a0c1853b-5c40-4b15-8766-3cf1c58f985a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{a615acb9-d5a4-4738-b561-1df301d207f8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{a7975c8f-ac13-49f1-87da-5a984a4ab417}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{a83fa99f-c356-4ded-9fd6-5a5eb8546d68}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{a9c11050-9e93-4fa4-8fe0-7c4750a345b2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{aa4c798d-d91b-4b07-a013-787f5803d6fc}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{aabf8b86-7936-4fa2-acb0-63127f879dbf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{aaeac398-3028-487c-9586-44eacad03637}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{aaf67066-0bf8-469f-ab76-275590c434ee}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{add0de40-32b0-4b58-9d5e-938b2f5c1d1f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ae4bd3be-f36f-45b6-8d21-bdd6fb832853}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{af0a5a6d-e009-46d4-8867-42f2240f8a72}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b059b83f-d946-4b13-87ca-4292839dc2f2}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b2fcd41f-9a40-4150-8c92-b224b7d8c8aa}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b447b4db-7780-11e0-ada3-18a90531a85a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b447b4de-7780-11e0-ada3-18a90531a85a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b447b4df-7780-11e0-ada3-18a90531a85a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b447b4e1-7780-11e0-ada3-18a90531a85a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b6cc0d55-9ecc-49a8-b929-2b9022426f2a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b6d775ef-1436-4fe6-bad3-9e436319e218}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b92cf7fd-dc10-4c6b-a72d-1613bf25e597}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b977cf02-76f6-df84-cc1a-6a4b232322b6}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{b9da9fe6-ae5f-4f3e-b2fa-8e623c11dc75}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ba093605-3909-4345-990b-26b746adee0a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ba723d81-0d0c-4f1e-80c8-54740f508ddf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{bd12f3b8-fc40-4a61-a307-b7a013a069c1}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{bea18b89-126f-4155-9ee4-d36038b02680}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{bf406804-6afa-46e7-8a48-6c357e1d6d61}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{bff15e13-81bf-45ee-8b16-7cfead00da86}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c2f36562-a1e4-4bc3-a6f6-01a7adb643e8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c4efc9bb-2570-4821-8923-1bad317d2d4b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c651f5f6-1c0d-492e-8ae1-b4efd7c9d503}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c6bf6832-f7bd-4151-ac21-753ce4707453}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c76baa63-ae81-421c-b425-340b4b24157f}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{c9bdb4eb-9287-4c8e-8378-6896f0d1c5ef}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{cab2b8a5-49b9-4eec-b1b0-fac21da05a3b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{cb070027-1534-4cf3-98ea-b9751f508376}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{cbda4dbf-8d5d-4f69-9578-be14aa540d22}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{cd7cf0d0-02cc-4872-9b65-0dba0a90efe8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{cf3f502e-b40d-4071-996f-00981edf938e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d0e22efc-ac66-4b25-a72d-382736b5e940}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d1bc9aff-2abf-4d71-9146-ecb2a986eb85}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d2e990da-8504-4702-a5e5-367fc2f823bf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d39b6336-cfcb-483b-8c76-7c3e7d02bcb8}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d3f29eda-805d-428a-9902-b259b937f84b}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d710d46c-235d-4798-ac20-9f83e1dcd557}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{d8965fcf-7397-4e0e-b750-21a4580bd880}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{dab3b18c-3c0f-43e8-80b1-e44bc0dad901}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{db00dfb6-29f9-4a9c-9b3b-1f4f9e7d9770}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{dbe9b383-7cf3-4331-91cc-a3cb16a3b538}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{dcbe5aaa-16e2-457c-9337-366950045f0a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{de095dbe-8667-4168-94c2-48ca61665aca}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{de513a55-c345-438b-9a74-e18cac5c5cc5}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{de7b24ea-73c8-4a09-985d-5bdadcfa9017}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e0c6f6de-258a-50e0-ac1a-103482d118bc}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e1dd7e52-621d-44e3-a1ad-0370c2b25946}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e4d53f84-7de3-11d8-9435-505054503030}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e4f68870-5ae8-4e5b-9ce7-ca9ed75b0245}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e53df8ba-367a-4406-98d5-709ffb169681}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e5c16d49-2464-4382-bb20-97a4b5465db9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e6307a09-292c-497e-aad6-498f68e2b619}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e6835967-e0d2-41fb-bcec-58387404e25a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{e7558269-3fa5-46ed-9f4d-3c6e282dde55}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ea8cd8a5-78ff-4418-b292-aadc6a7181df}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ec23f986-ae2d-4269-b52f-4e20765c1a94}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ed8b9bd3-f66e-4ff2-b86b-75c7925f72a9}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{eef54e71-0661-422d-9a98-82fd4940b820}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f0be35f8-237b-4814-86b5-ade51192e503}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f0db7ef8-b6f3-4005-9937-feb77b9e1b43}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f1201b5a-e170-42b6-8d20-b57ac57e6416}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f1394de0-32c7-4a76-a6de-b245e48f4615}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f1ef270a-0d32-4352-ba52-dbab41e1d859}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f2311b48-32be-4902-a22a-7240371dbb2c}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f3f53c76-b06d-4f15-b412-61164a0d2b73}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f43c3c35-22e2-53eb-f169-07594054779e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f4aed7c7-a898-4627-b053-44a7caa12fcd}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f5dbaa02-15d6-4644-a784-7032d508bf64}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f82fb576-e941-4956-a2c7-a0cf83f6450a}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f8ad09ba-419c-5134-1750-270f4d0fb889}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{f9fe3908-44b8-48d9-9a32-5a763ff5ed79}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fa773482-f6ed-4895-8a7d-4f5850678e59}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fae10392-f0af-4ac0-b8ff-9f4d920c3cdf}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fae96d09-ade1-5223-0098-af7b67348531}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fb829150-cd7d-44c3-af5b-711a3c31cedc}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fbcfac3f-8459-419f-8e48-1f0b49cdb85e}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{fc65ddd8-d6ef-4962-83d5-6e5cfe9ce148}" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application\{ff79a477-c45f-4a52-8ae0-2b324346d4e4}" /v "Enabled" /t REG_DWORD /d "0" /f
timeout /t 3 /nobreak >nul
cls
goto :tweaks

:opcao10 
cls
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "1" /f
timeout /t 3 /nobreak >nul
cls
goto :tweaks




:opcao11
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "Theme" /t REG_DWORD /d "1" /f
timeout /t 3 /nobreak >nul
cls
goto tweaks




:opcao12
cls


reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "DistanceThresholdInDIPS" /t REG_DWORD /d "28" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismDelayInMilliseconds" /t REG_DWORD /d "32" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismUpdateIntervalInMilliseconds" /t REG_DWORD /d "10" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "AttractionRectInsetInDIPS" /t REG_DWORD /d "5" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "VelocityInDIPSPerSecond" /t REG_DWORD /d "168" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "2710" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
timeout /t 3 /nobreak >nul
cls
goto tweaks




:opcao13
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f 
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f 
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f 
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f 
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "0" /f 
timeout /t 3 /nobreak >nul
cls
goto :tweaks







:opcao14
title Deobloat
mode 97,11


cls && chcp 65001 >nul
echo( !W!
set /p con=Você deseja remover o 3D Builder? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o 3D Print? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o 3D Viewer? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover os Alarmes? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover as Notícias da Microsoft? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Calculadora? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Câmera? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Cortana (aplicativo)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Hub de Comentários? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Obter Ajuda? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Introdução? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover os Mapas? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover as Mensagens? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Cliente de Publicidade da Microsoft? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Edge? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage" & cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\8*\Installer & setup --uninstall --force-uninstall --system-level & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Office (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage" > nul & PowerShell -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.Office.Desktop* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Correio e Calendário? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Mixed Reality Portal? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Pagamentos? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Pessoas? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft OneNote? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Solitário? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Sticky Notes? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Microsoft Store? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Store Purchase (quebra a Microsoft Store)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Microsoft Zune Vídeo e Música? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover as Fotos? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Área de Trabalho Remota? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.RemoteDesktop* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Gravação de Som? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover a Previsão do Tempo? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Xbox? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover os Xbox Extras? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage" & PowerShell -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage" & reg delete "HKEY\_CURRENT\_USER\System\GameConfigStore\Parents" /f >nul & reg delete "HKEY\_CURRENT\_USER\System\GameConfigStore\Children" /f >nul & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Seu Telefone? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Adobe Photoshop Express (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Candy Crush (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *CandyCrush* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Duolingo (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Duolingo-LearnLanguagesforFree* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Facebook (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Flipboard (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Flipboard* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Painel de Controle de Gráficos da Intel (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *AppUp.IntelGraphicsControlPanel* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o LinkedIn (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *7EE7776C.LinkedInforWindows* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja desinstalar o Microsoft OneDrive? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall >nul & %SystemRoot%\System32\OneDriveSetup.exe /uninstall >nul & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Mirkat (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Mirkat.Mirkat* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o MS Paint (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Teste de Velocidade da Rede (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.NetworkSpeedTest* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Spotify (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Spotify* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Console de Áudio da Realtek (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *RealtekSemiconductorCorp.RealtekAudioControl* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Skype (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage" & chcp 65001 >nul && cls
if /i "%con%" == "não" cls

cls && chcp 65001 >nul

set /p con=Você deseja remover o Twitter (versão da loja)? (%g%sim%w%/%r%não%w%)
if /i "%con%" == "sim" cls && chcp 437 >nul & PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage" & chcp 65001 >nul && cls && goto tweaks
if /i "%con%" == "não" goto tweaks


































































































































