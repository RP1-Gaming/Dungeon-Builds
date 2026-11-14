# Dungeon Builds

Windows builds of the Blessed Throne dungeon prototype, and the launcher that keeps them up to date.

## Play

1. Download [BlessedThroneLauncher.exe](https://github.com/RP1-Gaming/Dungeon-Builds/raw/main/BlessedThroneLauncher.exe).
2. Put it in a folder of its own, for example `Documents\Blessed Throne`. It installs the game into a `Game` folder beside itself.
3. Run it. It downloads the game (about 100 MB the first time), then shows a **Play** button.

Always start the game through the launcher. Each time it starts it checks for a new build and downloads only the files that changed, so everyone stays on the same version.

Windows may show a "Windows protected your PC" warning because the launcher is unsigned; choose **More info > Run anyway**. Windows 10 or 11, 64-bit.

In the game, **Host a game** starts a session others can join. To join someone, enter their IP address and click **Join**.

## Run a server

Click **Start server** in the launcher. The server has no window of its own; the launcher shows the addresses players can join with, and **Stop server** stops it. The server log is `Game\server.log`.

- The server uses **UDP port 7777**. Allow it through Windows Firewall when asked.
- Players on the same network, or on the same Tailscale network, can join straight away using the address shown.
- To play over the internet without Tailscale, forward UDP 7777 on the router to the server machine and give players its public IP address.
- Up to 16 players. Players can join at any time.
- Nothing is saved: restarting the server restarts the dungeon.

## Controls

| Action | Input |
|---|---|
| Move / look | W A S D / mouse |
| Jump | Space |
| Sprint | Left Shift |
| Bow | Hold left mouse to draw, release to fire |
| Firebolt / Mend / Blink | Q / E / F |
| Free the mouse | Escape |

## What is in this repo

| Item | Purpose |
|---|---|
| `BlessedThroneLauncher.exe` | The launcher |
| `manifest.json` | The current version and a checksum for every game file; the launcher reads this |
| `Game/` | The current build |

This repo is filled by a publish script in the source repo; don't edit it by hand.
