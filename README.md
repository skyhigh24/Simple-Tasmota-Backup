# Tasmota Backup Downloader Script

A small Windows batch script that automatically downloads backup files from multiple devices and stores them in a date‑stamped folder.  
Useful for simple distributed systems where each device exposes a `/dl` endpoint.

## Features

- Creates a folder named after the current date (`YYYY-MM-DD`)
- Downloads backup files from a list of device IPs
- Uses `curl` with `-OJ` to preserve original filenames
- Stores all backups neatly inside the dated folder

## Usage

1. Make sure **curl** is available (included by default on modern Windows versions).
2. Add your device IPs to the `IPs` variable inside the script.
3. Run the script by double‑clicking it or executing it in a terminal.

A folder like this will be created next to the script:

2026-02-18\
device1.dmp
device2.dmp
...
