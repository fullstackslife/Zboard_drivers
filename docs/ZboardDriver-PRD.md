Absolutely. Below is the full **`ZboardDriver-PRD.md`** file — structured for use with Cursor’s dev task flow and based on your `context.md`, `README.md`, and AI dev tooling.

---

# 📄 ZboardDriver-PRD.md

**Product Requirement Document**
**Title:** Windows 11 Driver for SteelSeries Zboard (PW1USE1-B3ZBD01)
**Owner:** Brian Salvatore / Open Hardware Community
**Goal:** Open-source driver for Zboard functionality on modern Windows systems

---

## 🎯 Purpose

The purpose of this project is to build a Windows 11-compatible, test-signable USB HID driver for the **SteelSeries Zboard Gaming Keyboard** (Model: PW1USE1-B3ZBD01), a modular keyboard from the early 2000s. The official software (ZEngine / SteelSeries Engine) is no longer maintained and lacks compatibility with Windows 10/11.

This project aims to restore basic and extended functionality, including keyset switching and macro input support, using only public USB descriptors and community-safe reverse engineering.

---

## 🧑‍💻 Target Users

* Retro and mechanical keyboard enthusiasts
* PC gamers using legacy peripherals
* Accessibility hackers who benefit from Zboard’s modular layouts
* Driver developers and open hardware contributors

---

## 🛠️ Functional Requirements

| ID | Feature                                  | Priority | Description                                                                             |
| -- | ---------------------------------------- | -------- | --------------------------------------------------------------------------------------- |
| F1 | Basic USB HID Driver                     | High     | Provides core keyboard input mapping via `.INF` and `.SYS` driver for use in Windows 11 |
| F2 | Test-Signed Driver Support               | High     | Uses self-signed `.CAT` and Windows test mode for development installs                  |
| F3 | Keyset Profile Switching (Manual/Static) | Medium   | Switches input mappings based on detected keysets (initially static lookup)             |
| F4 | Macro Support (Optional)                 | Low      | Allows Zboard macro keys to trigger multi-key sequences                                 |
| F5 | Tray App (Optional UI)                   | Low      | User-mode tool to switch profiles or test macros                                        |
| F6 | GitHub CI Integration                    | Medium   | Auto-generate `.cat`, `.inf`, `.sys` with lint and signing checks                       |

---

## 🚫 Non-Requirements

* Kernel-mode code is not required (UMDF2 preferred)
* No reverse engineering of firmware or disassembly of proprietary software
* No dependency on ZEngine/SteelSeries SDKs unless granted

---

## 🔧 Technical Constraints

* Must function on **Windows 11 64-bit** with `bcdedit /set testsigning on`
* Use **UMDF2** for driver build (avoids EV certificate cost)
* Use `pnputil` or `.bat` script for installs
* Target device: `VID_0AC8&PID_F000` *(placeholder, confirm actual)*
* No official documentation from SteelSeries — use USB descriptors only

---

## 📦 Project Structure

| Path                | Description                                    |
| ------------------- | ---------------------------------------------- |
| `/driver/`          | `.inf`, `.cat`, `.sys` files for install       |
| `/usb-descriptors/` | USBView/USBPcap dumps and analysis             |
| `/app/`             | Optional GUI for keyset switching              |
| `/docs/`            | Zboard layout references, mappings             |
| `/devtools/`        | `.mdc` scripts for Cursor agent                |
| `README.md`         | Public-facing documentation and community call |
| `context.md`        | Engineering and strategic guidance for Cursor  |

---

## 🔐 Signing Strategy

* During dev: `signtool` + self-signed cert + test mode
* For release: Optionally submit through [Microsoft Partner Center](https://partner.microsoft.com/en-us/dashboard/hardware/)
* Signing command:

  ```bash
  signtool sign /v /n "Zboard Dev Cert" ZboardDriver.cat
  ```

---

## 🧠 Development Notes for Cursor Agent

* Focus on USB HID compliance and installability in Windows 11 test mode
* Modularize keyset profiles as config files or embedded map tables
* Do not use any proprietary SteelSeries code — rely on observed behavior
* Implement a working `.INF` + `.SYS` install path before building macro/keyset features
* Accept `.inf`-based driver loading as sufficient MVP
* If `.cat` generation fails, fall back to unsigned install in test mode

---

## 📣 Community and Stakeholder Plan

* Engage SteelSeries publicly on GitHub and Twitter
* Launch on Hacker News, Reddit (`r/mechanicalkeyboards`, `r/retrobattlestations`)
* Call for testers, USB logs, and profile feedback
* Offer SteelSeries a chance to contribute docs, co-maintain repo, or endorse the project

---

## 📈 Success Metrics

* Keyboard works with all alphanumeric keys on Windows 11
* INF driver installs cleanly with `pnputil` in test mode
* At least 2 alternate keysets supported via config
* Project receives GitHub stars + community feedback
* Optional: SteelSeries acknowledges or supports the effort

---

## 🧩 Out of Scope for Phase 1

* Auto-detection of inserted keysets via firmware-level signaling
* Dynamic key remapping via Windows registry or intercept layer
* Full macro recorder GUI
* Installer GUI or WHQL distribution

---

## 📋 Next Steps for AI Agent

After generating this PRD, Cursor should:

1. Use `@generate-tasks.mdc` to create the full task list
2. Begin work at task `1.1` with `@process-task-list.mdc`
3. Wait for user confirmation before advancing each task

---

Let me know if you want the next file: `tasks.md` auto-generated from this PRD, or a filled-in PRD+task chain saved back to your working directory.
