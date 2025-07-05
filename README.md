# 🧠 Zboard Resurrection Project
**Windows 11 Community Driver for SteelSeries Zboard Gaming Keyboard (PW1USE1-B3ZBD01)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Windows 11](https://img.shields.io/badge/Windows-11-blue.svg)](https://www.microsoft.com/en-us/windows/windows-11)
[![WDK](https://img.shields.io/badge/WDK-Windows%20Driver%20Kit-green.svg)](https://docs.microsoft.com/en-us/windows-hardware/drivers/)

[Amazon Listing](https://www.amazon.com/dp/B0002H7F3G) | [Legacy Installer](https://engine.steelseriescdn.com/SteelSeriesGG30.0.1Setup.exe)

---

## 🔥 Why This Exists

The SteelSeries Zboard was a **modular gaming keyboard ahead of its time**, with custom swappable keysets for FPS games, MMOs like World of Warcraft, and productivity use. Sadly, SteelSeries discontinued support — and now it won't even function fully on modern Windows.

This project is our community effort to:
- Revive full functionality on **Windows 11**
- Make it usable again with modern systems
- Pressure SteelSeries (with respect) to assist in preservation

---

## 🛠️ What This Repo Contains

- 🧩 `.INF` file to install a basic USB HID driver for the Zboard
- 🖥️ `.CAT` signing stub (replace or sign with your own)
- 🧪 Test-mode compatible install script (`install_driver.bat`)
- 📖 USB descriptor logs and ongoing reverse engineering
- 🗂️ Structure ready for user-mode enhancements, remaps, macros

---

## ⚠️ Disclaimer

This project is fully **reverse-engineered** using only publicly observable USB behavior. No SteelSeries source code is used or decompiled.

We welcome SteelSeries to:
- Contribute documentation
- Open-source legacy driver components
- Collaborate with the community

> 🧤 We are preservationists, not pirates.

---

## 📣 Call to SteelSeries

We love this keyboard. It was ahead of its time, and we're preserving it.

👉 If SteelSeries has any docs, layouts, or USB specs they can share — it would make this project better, faster, and more accurate.

This is a 100% community-run initiative. No profit. No branding abuse. Just appreciation for a device that deserves to live on.

📩 Please open a GitHub Issue or email us at zboard@preserveinput.org if you're open to helping.

---

## 🙏 What We Need

- Community testers with Zboard keyboards
- USB descriptor dumps from legacy systems
- Help capturing keyset swap behaviors
- SteelSeries input — even a single PDF would help

---

## 🐉 Install Instructions (Dev/Test Mode)

> For development and testing only:

1. Open PowerShell as Admin
2. Run:
   ```powershell
   bcdedit /set testsigning on
   ```
3. Reboot your system
4. Run `install_driver.bat` from this repo
5. Plug in your Zboard and enjoy basic functionality

---

## 💬 Discussion

* Reddit: [r/mechanicalkeyboards](https://reddit.com/r/mechanicalkeyboards), [r/retrobattlestations](https://reddit.com/r/retrobattlestations)
* GitHub Issues
* Discord (coming soon)

---

## 📜 License

MIT License. For educational, archival, and community usage. 