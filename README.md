# Dungeon Builds

Windows builds of the Blessed Throne dungeon prototype. Source: [Dungeon-Demo](https://github.com/RP1-Gaming/Dungeon-Demo).

**Current build:** Dungeon-Demo commit `3534467`, built 2026-11-13 with Unity 6000.3.7f1.

## Download

Click **Code > Download ZIP** on GitHub and unzip it, or `git clone` this repo. Windows 10 or 11, 64-bit.

## Client

Run `Client\BlessedThrone.exe`.

- **Host a game** starts a session on your machine that others can join.
- To join someone, enter the host's or server's IP address and click **Join**.

Windows may show a SmartScreen warning because the build is unsigned; choose **More info > Run anyway**.

## Server

Run `Server\start-server.bat` (optionally `start-server.bat PORT`). It runs headless with no window of its own; the log is written to `Server\server.log`. Close the console window to stop it.

- The server listens on **UDP port 7777**. Allow it through Windows Firewall when asked.
- To play over the internet, forward UDP 7777 on the router to the server machine and give players its public IP address.
- Up to 16 players. Players can join at any time.

The `Server` and `Client` folders currently contain the same program; the server is the game run in headless mode.

## Controls

| Action | Input |
|---|---|
| Move / look | W A S D / mouse |
| Jump | Space |
| Sprint | Left Shift |
| Bow | Hold left mouse to draw, release to fire |
| Firebolt / Mend / Blink | Q / E / F |
| Free the mouse | Escape |
