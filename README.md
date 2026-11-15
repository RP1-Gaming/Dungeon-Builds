# Dungeon Builds

Windows builds of Dungeon Demo, and the launcher that keeps them up to date.

## Play

1. Download [DungeonDemoLauncher.exe](https://github.com/RP1-Gaming/Dungeon-Builds/raw/main/DungeonDemoLauncher.exe).
2. Put it in a folder of its own, for example `Documents\Dungeon Demo`. It installs the game into a `Game` folder beside itself.
3. Run it. It downloads the game (about 100 MB the first time), then shows a **Play** button.

Always start the game through the launcher. Each time it starts it checks for a new build and downloads only the files that changed, so everyone stays on the same version.

Windows may show a "Windows protected your PC" warning because the launcher is unsigned; choose **More info > Run anyway**. Windows 10 or 11, 64-bit.

## Playing together

One player clicks **Host a game**. Everyone else enters that player's IP address and clicks **Join**.

- The game uses **UDP port 7777**. The host should allow it through Windows Firewall when asked.
- Players on the same network, or on the same Tailscale network, can join straight away.
- To play over the internet without Tailscale, the host forwards UDP 7777 on their router and gives players their public IP address.
- Up to 16 players. Players can join at any time.
- The main menu lists games it finds on your local network; click one to join. A server you have joined once by typing its address (for example over Tailscale) is remembered and listed from then on.
- Everyone starts in a lobby room. Press R when you are ready; the run starts when everyone is, or when the host presses Enter. The host picks the difficulty there with 1, 2 or 3.
- Nothing is saved. The host can restart the run from the Esc menu (Restart run, clicked twice).

## Controls

| Action | Input |
|---|---|
| Move / look | W A S D / mouse |
| Jump | Space |
| Sprint | Left Shift |
| Bow | Hold left mouse to draw, release to fire |
| Firebolt / Blink | Q / F |
| Mend | Hold E. You heal slowly but cannot move or attack, and take much more damage |
| Ping | Middle mouse button |
| Scoreboard | Hold Tab |
| Ready up in the lobby | R |
| Menu: volume, key bindings, restart | Escape |

## Dedicated server (optional)

To run a server with no window, from the folder containing the launcher:

```text
Game\DungeonDemo.exe -batchmode -nographics -server -logFile server.log
```

Stop it from Task Manager (end `DungeonDemo.exe`), or with `taskkill /f /im DungeonDemo.exe`.

## What is in this repo

| Item | Purpose |
|---|---|
| `DungeonDemoLauncher.exe` | The launcher |
| `manifest.json` | The current version and a checksum for every game file; the launcher reads this |
| `Game/` | The current build |

This repo is filled by a publish script in the source repo; don't edit it by hand.
