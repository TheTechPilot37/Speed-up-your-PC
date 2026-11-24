# Speed Up My Laptop

A simple one-click cleanup tool for Windows 10 and 11. It removes junk files that slow your computer down, so it runs faster and feels smoother.

## What it does

1. Deletes temporary files (user and Windows temp folders)
2. Clears old Windows Update download files
3. Empties the Recycle Bin
4. Flushes the DNS cache
5. Scans and repairs Windows system files (`sfc /scannow`)

Your documents, photos, and installed programs are never touched.

## Requirements

- Windows 10 or Windows 11
- Administrator rights

## How to use

1. Download `speed_up_laptop.bat`.
2. Right-click the file and choose **Run as administrator**.
3. Wait until you see "Done!". The last step can take 10 to 20 minutes.
4. Restart your computer.

## Extra tips for a faster laptop

- **Disable startup programs:** Press `Ctrl + Shift + Esc`, open the **Startup apps** tab, right-click programs you don't need at boot, and choose **Disable**.
- **Keep free disk space:** Try to keep your drive less than 85% full.
- **Install updates:** Keep Windows, drivers, and your browser up to date.
- **Upgrade hardware:** If your laptop still uses a hard disk (HDD), switching to an SSD gives the biggest speed boost. 8 GB of RAM or more also helps.

## Troubleshooting

- **"Please right-click this file and choose Run as administrator":** The script needs admin rights. Close the window and run it again as administrator.
- **Windows protects your PC / SmartScreen warning:** Click **More info**, then **Run anyway**. You can open the file in Notepad first to see exactly what it does.
- **Still slow after running it:** Check Task Manager for programs using a lot of CPU or memory, and consider an SSD or more RAM.

## Disclaimer

This tool is provided as is, without warranty. Back up important files before running any maintenance tool.
