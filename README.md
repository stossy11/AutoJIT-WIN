# AutoJIT-WIN

## What is AutoJIT-WIN?
- AutoJIT-WIN is an wireless automation tool that enables Windows users to enable JIT Automatically, without manually interacting with CMD every single time. Based on [AutoJIT for Mac](https://github.com/plizeee/AutoJIT)  By @plizeee and [iOS17-JIT-WIN](https://github.com/fritzlb/iOS17-JIT-WIN/tree/main) an

## Why does AutoJIT-WIN exist?
- iOS 17 nerfed previous popular methods of enabling JIT by:
1. No longer being able to Automatically Enable JIT on your iOS Device
2. No longer being able to Wirelessly Enable JIT on your iOS Device

## What does AutoJIT do to solve these issues?
- It uses ssh to run a python script that enables jit wirelessly and from your device


## What Devices support AutoJIT?
- Every should

## How do I add more apps?
- Edit the shortcut
- Add new item to the menu (name this whatever you'd like)
- Add a `Text` action (within the new menu item) and enter the bundle id of the app
- Add a `Set Variable` (within the new menu item) action, enter `App` as the variable name
- Select `Input`, then `Select Variable`, then select the text block you just added

## How to find App Bundle id
1. Google it
2. Use Altstore (no guide yet just use the one below)
3. Extract the iPA 
   - then open the folder that should be called appname.app 
   - then open info.plist
   - it should be com.devname.appname, org.devname.appname or just xxx.devname.appname
     
devname, appname are placeholders for the developer name and the Application Name


# Setup

## Requirements:

Note: AutoJIT is only really useful for iOS 17, since there are various better alternatives for iOS 16 and below.

- Windows device
- iOS 17 Device
  

## Windows PCs:
1. Enable SSH:
   - https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=gui#install-openssh-for-windows
3. Download/Clone this repo (green button -> download zip)
4. Install iTunes.
5. Extract the zip file at a location of your choice.
6. Install python from https://www.python.org/downloads/. Make sure to add it to your PATH.
7. Connect your device
8. Run install.bat by double clicking it Make sure your device is plugged in.
9. Restart your PC

## iOS Device:

## Standard Version that asks you what app you want
1. Download `AutoJIT-WIN.shortcut` on your iOS device
2. Tap the shortcut from files 
3. Answer the questions:
   1. Enter the path to the `AutoJIT-WIN` folder on your PC
      - To get the path, right-click the `AutoJIT-WIN` folder and click **Copy as Path** and paste the text somewhere.
   2. Enter the hostname or local IP of your PC
      - To find this, follow this very short guide https://www.med.unc.edu/it/guide/operating-systems/how-do-i-find-the-host-name-ip-address-or-physical-address-of-my-machine/
   3. Enter the username of your PC
   4. Enter "Yes" if you want to save your password. Otherwise, enter "No" and you will be prompted for your password every time you run the shortcut.
      - Note: Your password is stored in plain text in the `AutoJIT-WIN` shortcut, so be careful with this option.
   5. Enter your password if you chose to save it in the previous question. Otherwise, leave it blank.
   6. Enter "Yes" if you want sound to play when JIT is enabled. Otherwise, enter "No"
   
## Auto Version that is meant for a Automation
1. Download `AutoJIT-WIN-AUTO.shortcut` on your iOS device
2. Tap the shortcut from files
   1. Enter the path to the `AutoJIT-WIN` folder on your PC
      - To get the path, right-click the `AutoJIT-WIN` folder and click **Copy as Path** and paste the text somewhere.
   2. Enter the hostname or local IP of your PC
      - To find this, follow this very short guide https://www.med.unc.edu/it/guide/operating-systems/how-do-i-find-the-host-name-ip-address-or-physical-address-of-my-machine/
   3. Enter the username of your PC
   4. Enter "Yes" if you want to save your password. Otherwise, enter "No" and you will be prompted for your password every time you run the shortcut.
      - Note: Your password is stored in plain text in the `AutoJIT-WIN` shortcut, so be careful with this option.
   5. Enter your password if you chose to save it in the previous question. Otherwise, leave it blank.
   6. Enter "Yes" if you want sound to play when JIT is enabled. Otherwise, enter "No"
   7. bundle id for what App would you like auto enable JIT without menu
   8. Name for app you would like to auto enable JIT without menu

Test out the shortcut. You can add it to your Home Screen as an app with a custom icon, if you'd like.

# Troubleshooting

Go to the https://github.com/fritzlb/iOS17-JIT-WIN Project as this is Based on that



