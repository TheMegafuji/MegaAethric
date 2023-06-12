# Show off
This code is maintained as a showcase, as it does not intent to infringe any intellectual property of the devs, this is purely for demonstrations purpose as a non profitable fan work.

### **Hacks:**
1. Teleport to cities and towers
2. Instant teleport to map location
3. Interact without limits
4. Remove battle animations
5. No collision in Turul bird mini game
6. Auto fishing (no need to use the rod)
7. Render all mobs in area
8. Speedhack inside cities/towers
9. Allow option Flee in every battle (including Tower of Olympia)
10. Zoom out hack

### **Automation:**
1. Auto Gather, gathers collectables automatically (chest, wood, stone, etc)
2. Selector for which attack to use (attack or first spell)
3. Auto Rematch, used for auto battle in Arena (this will automatically rematch)
4. Auto Battle, uses the configured selection to automatically battle with enemies, will prefer Volley over normal attack, if summoner/attunner will summon chimera > garm > warg
5. Auto Continue, after battle or when something is found, will automatically advance
6. Auto Heal, will use auto heal if health or mana is below 90%
7. Auto Walk, enables walking from the last clicked position, once enabled there will be a configurable option for your liking.
8. Party battle, if allowed, will ALWAYS prefer battle alongside friends or ONLY battle with friends, this is great for adding more monsters in boss battle, like Tower Guardian, in order to collect Olympia Keys
9. Codex Hack, when in codex, there is a option to add monster to list, this will be highlighted in the panels and focused on battles, you can also blacklist mobs this way.
10. Autobuy good itens in bazar (Sudun/Myrkheim)

### **Filters and Misc**
1. All NPCs, Collectables, Raid Bosses, Codex selected mobs and Memories will appear as a option for you to click in the left side of the screen (as shown in the screenshot)
2. All Monsters will appear in the right side of the screen, with their icon, name and level, allowing you to quickly battle against them
3. There will be options to filter what appears and what not, also what is to be targeted.

# Getting started

As of June 2023, if you want to run it yourself, you need to decompile the APK and update the code based on what is shown on app.js with comments.

In order to run the bot you will require:
* [GIT](https://git-scm.com/downloads)

You can clone this repository to a folder using GIT:
1. Open a terminal inside the folder you want to clone
2. Execute the following command:
```
git clone https://github.com/GGarciaDev/MegaAethric.git
```

# Running

## In PC:
Open assets/bundle.html in a browser of your choice or download the latest apk from the releases. Please note that its recommended to mock User-Agent in order to be more undetectable.

Get a random User-Agent from [here](https://user-agents.net/devices/mobiles)

You can do a custom shortcut using the suggested following arguments in chrome based browser:
* `--app="PATH_TO_BUNDLE_HTML"` - This will make the browser start in APP mode, basically make the application without top bar, change to the bundle.html path
* `--window-size=W,H` - Custom window size (note this doesnt affect logged dimensions to the game server), change W and H to desired.
* `--profile-directory="Profile X"` - Automatically starts in a custom Profile, its great for running multiple accounts, change X to desired Profile (use chrome://version/ to check your current one)
* `--user-agent="USER_AGENT` - Use custom a User-Agent, making all requests appear as mobile device

## In Android:
You can download the latest APK available in the [release section](https://github.com/TheMegafuji/MegaAethric/releases/)

# Building for Android

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
