# Serverfunctions

This is a collection of features and tools for use in vanilla minecraft servers. It is mainly designed for personal use, 
which means that if you want to use some of these features, some tweaking might be required.
No additional mods are required, this is just a datapack.


## Features:
### Display current state of a (mob) switch to every player on login.
- Related functions:
    - severfunctions:display_switch_state
- Notes:
    - To use, adapt the coordinates in display_switch_function to the location of your on/off switch. This could also be changed to display any old message on login.

### Fast travel portals
- Related functions:
    - serverfunctions:store_position
    - serverfunctions:make_teleport
    - serverfunctions:set_item
    - serverfunctions:delete_teleport
    - serverfunctions:do_tp
    - serverfunctions:summon_to_location
    - serverfunctions:tick
- Notes:
    - Portals will be displayed as particle clouds with an item inside. Portals are one-way and not interdimensional. 

To create a portal, first store the target location using `/function serverfunctions:store_position`. Then move to the location where you want yout portal to be.
Execute `/function serverfunctions:make_teleport`. You can adapt the item displayed in the portal, by calling `/function serverfunctions:set_item`, while holding the item you want to use as display. The item will not be consumed, but cannot be retrieved as well. You can also rename the item with an anvil to change the displayed name of the destination during teleportation.

## Setup / Installation:
This repository is designed for usage using a linux distribution.

Clone or download this repository. Then change `WORLD_SAVE_LOCATION` in Makefile to the path to your world save (the one containing the `datapacks` folder.)
Run `make install` from the terminal while in the directory of the Makefile, and it will automatically install the datapack and reload the servers datapack (no restart is required). The makefile assumes, that the server is hosted using the https://github.com/MinecraftServerControl/mscs server tool.

If you don't use mscs or are on windows, you can just zip the data folder, and copy it into your save folder by hand.