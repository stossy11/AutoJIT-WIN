@echo off

powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://github.com/mstorsjo/llvm-mingw/releases/download/20231128/llvm-mingw-20231128-msvcrt-x86_64.zip', 'archive.zip') }"
tar -xf archive.zip
del archive.zip
git clone https://github.com/doronz88/pymobiledevice3
cd pymobiledevice3
git checkout origin/refactor/bonjour
python3 -m pip install -U -e .
pip3 install -r requirements.txt
python3 -m pymobiledevice3 lockdown pair


set "message=For everything to work, it is recommended to reboot the PC now. Do you want to reboot?"
set "title=Reboot recommended"

echo Set objShell = CreateObject("WScript.Shell") > "%temp%\messagebox.vbs"
echo result = objShell.Popup("%message%", 0, "%title%", 36) >> "%temp%\messagebox.vbs"
echo WScript.Quit(result) >> "%temp%\messagebox.vbs"

cscript //nologo "%temp%\messagebox.vbs"
set "result=%errorlevel%"

del "%temp%\messagebox.vbs"

if !result! equ 6 (
    echo Rebooting...
    shutdown /r /t 0
) else (
    exit
)