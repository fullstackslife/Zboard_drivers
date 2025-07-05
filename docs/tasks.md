Excellent — here's your full **Cursor-compatible setup**, starting with the auto-generated `tasks.md` based on the `ZboardDriver-PRD.md`, followed by steps to drop everything into your repo.

---

# ✅ `tasks.md` — AI Task List for Cursor (from PRD)

```markdown
# ✅ ZboardDriver Task List

## 1. Base Driver Framework (HID over USB)

### 1.1 Create ZboardDriver.inf
- Scaffold `.INF` file for VID_0AC8&PID_F000 (placeholder)
- Ensure it's HIDClass and includes hidusb.inf

### 1.2 Generate CAT file
- Use `inf2cat /driver:. /os:10_X64`
- Output `ZboardDriver.cat`

### 1.3 Test-sign CAT
- Use `signtool` with self-signed cert or test cert
- Place cert in `Trusted Root` store

### 1.4 Enable and verify Test Mode
- Run `bcdedit /set testsigning on`
- Reboot system and confirm watermark

### 1.5 Install driver via pnputil
- Run:
```

pnputil /add-driver ZboardDriver.inf /install

```

## 2. USB Descriptor Reverse Engineering

### 2.1 Dump descriptors with USBView
- Capture:
- Vendor ID / Product ID
- Configuration descriptor
- HID Report descriptor

### 2.2 Save dumps to `/usb-descriptors/`
- Name files:
- `zboard-usbview.txt`
- `zboard-hid-report.txt`

## 3. Keyset Profile Support

### 3.1 Create static profile for default keyset
- Use raw input report maps
- Output to `keymaps/default.json`

### 3.2 Add one additional profile (e.g., FPS or WoW)
- Stub with static bindings for visible keys

## 4. Optional Tray App

### 4.1 Create tray app stub in `/app/`
- WinForms or Python Tkinter
- Allow dropdown to switch profiles

### 4.2 Save selected profile to config
- Path: `%APPDATA%/zboard/config.json`

## 5. CI & Release Prep

### 5.1 Create `install_driver.bat`
- Enable test signing
- Run pnputil
- Echo success/fail log

### 5.2 Set up GitHub Actions
- Lint `.INF`
- Generate `.CAT`
- Run optional test signing if cert provided

### 5.3 Prepare GitHub README.md
- Copy from draft in this chat
- Include installation instructions
- Community callout to SteelSeries

### 5.4 Tag SteelSeries on GitHub Issues
- Draft post: invite support and docs

## 6. Compliance

### 6.1 Confirm no proprietary code
- Do not reverse-engineer binaries
- Use only descriptor behavior

### 6.2 Final sign-off
- Confirm driver installs cleanly
- Confirm at least 2 keysets map correctly
- Prepare PRD-to-task audit trail
```

---

# 📦 Folder & File Deployment Plan

Here’s how to organize your repo:

```
/
├── context.md                 ✅ from your original
├── ZboardDriver-PRD.md        ✅ just generated
├── tasks.md                   ✅ just generated
├── ZboardDriver.inf           ✅ from chat
├── ZboardDriver.cat           ✅ stub + to be generated via inf2cat
├── install_driver.bat         ✅ one-click script
├── README.md                  ✅ from chat or yours
├── usb-descriptors/           ⬜ add real dumps
│   └── zboard-usbview.txt
├── app/                       ⬜ optional UI
│   └── tray.py or tray.cs
├── driver/                    ⬜ final signed driver
├── devtools/
│   ├── create-prd.mdc         ✅ already uploaded
│   ├── generate-tasks.mdc     ✅ already uploaded
│   └── process-task-list.mdc  ✅ already uploaded
```

---

# 🧠 What to Do Next in Cursor

Launch Cursor and run:

```text
Use @ZboardDriver-PRD.md and create tasks using @generate-tasks.mdc
```

Then begin execution:

```text
Please start on task 1.1 and use @process-task-list.mdc
```

You’re now fully set up for an AI-driven, step-by-step build of your open-source Zboard driver with:

* Community pressure
* Install and test support
* Cursor PRD/task integration

