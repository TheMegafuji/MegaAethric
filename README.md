## Getting started

In order to run the bot you will require:
* [GIT](https://git-scm.com/downloads)

You can clone this repository to a folder using GIT:
1. Open a terminal inside the folder you want to clone
2. Execute the following command:
```
git clone https://github.com/GGarciaDev/MegaAethric.git
```

## Running the bot

Open assets/bundle.html in a browser of your choice or download the latest apk from the releases.

## Building for Android

You need to download [ApkTool](https://github.com/iBotPeaches/Apktool)
1. Copy the content of assets folder inside Aethric
2. Execute the following command:
```
apktool b ./Aethric
```
3. The APK will be under Aethric/dist, its unsigned, you need to sign using a a key
4. If unaligned an error will occur, you can use `zipalign -f -p 4 app.apk`
5. For signing the app, there is a keystore here, the alias is `mega` and the password is `aethric`, execute both signatures:
```
jarsigner -keystore aethric.keystore -verbose app.apk mega
apksigner sign --ks .\aethric.keystore app.apk
```


## Hacks available

This version of the game also have some quick little hacks available:
1. Removed the minimun range for interacting with things in the map
2. Automatically teleport to the desired clicked location
3. If you click on tress (or places you can't walk into) it will refresh the screen (allowing you to retrieve markers again)
4. All the collectables (markers) are also shown in the top left menu, allowing you to click them to collect
5. All the monsters neaarby, bosses included, are shown at the top right menu, allowing you to start battle by clicking them
6. No more battle animations or delayed time, once the packet has reached the server and return you are free to attack again
7. There is a new button on the bottom bar which opens a quick hacks menu:
  * Quickly teleport to new locations
  * Activate IDLE tools that will play the game for you
  * Customize the way feature (4, 5) appears
