### In this location create the following file
> /usr/share/xsessions 
> dwm.desktop

then add the following to its contents

```
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=the dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession

```

### to fix Dwm craching because of emojis I installed ttf-symbola 

> sudo apt install ttf-symbola

### Transparency was by installing picom and then adding the following to my xsessionrc

```bash
#!/bin/bash
picom &
nitrogen --restore &
setxkbmap -option ctrl:nocaps &

dwm 
```

### As can be seen here also in my .xessionrc file I have setxkbmap to change caps lock to ctrl.

Shortcuts ::
Alt [Mod] + Shift + B which opens chromium.
Alt [Mod] + Shift + S which opens Screenshot software.
Alt [Mod] + Q which runs a script to display the current date and time.
Alt [Mod] + R Turns of opactiy in Alacritty
Alt [Mod] + E Turns of opactiy in Alacritty

Time script
```bash
#!/bin/bash

while true; do
    now="$(date +'%I:%M %p %d/%m/%Y')"
    xsetroot -name "$now"
    sleep 60
done
```

Remove opactiy script
```bash
#!/bin/bash

# Path to the .alacritty.yml file
alacritty_file="$HOME/.alacritty.yml"

# Update the opacity value to 0
sed -i 's/opacity: [0-9.]\+/opacity: 0.9/' "$alacritty_file"
```

Return opactiy script
```bash
#!/bin/bash

# Path to the .alacritty.yml file
alacritty_file="$HOME/.alacritty.yml"

# Update the opacity value to 0
sed -i 's/opacity: [0-9.]\+/opacity: 1/' "$alacritty_file"
```
