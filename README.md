# Minecraft Server

My very cool survival minecraft server

## Observations

This server is intended to be private and is only publicly available because of my limited automatically updating system.

Because of that you will might need to change some files that you would not need to normally.

Whitelist is set to true so if you don't want that, change `white-list` to `false` in `server.properties` or run `whitelist off` to remove the whitelist or `whitelist add yourminecraftusername` in the console to add yourself to the whitelist.

Because `25565` was already in use, the port is currently set to `25570`, to set the port back to `25565` or any other value, remember to set the fields `query.port` and `server-port` in `server.properties`.

Some commands were globally disabled to prevent console access abuse. See `commands.yml` for more details.

### Plugins

There are many plugins included in this repository. All of them can be found under the `plugins` directory. Their configuration files should be located at `plugins/<plugin>`.

The notable plugins (separated by category) are

* Game Mechanics
  * FarmAssistReboot (possibly broken)
  * TreeAssist
  * Graves
  * TreeAssist
  * VeinMiner

* Compatibility
  * CoordinatesHUD
  * SkinsRestorer
  * ViaVersion
    * ViaBackwards

* Added it because yes
  * EssentialsX
