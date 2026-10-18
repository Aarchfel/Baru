> [!WARNING]
> *Baru is still a `work in progress` and is currently in early development. Things may change, features may break, and the documentation might occasionally struggle to keep up.*

<div align="center">

# 【 Baru 】

### Your Personal Desktop Productivity App.

*A personal workspace for your tasks, notes, plans, and everything in between.*

<br />

[![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)](https://www.rust-lang.org/)
[![Qt](https://img.shields.io/badge/Qt-41CD52?style=for-the-badge&logo=qt&logoColor=white)](https://www.qt.io/)
[![QML](https://img.shields.io/badge/QML-41CD52?style=for-the-badge&logo=qt&logoColor=white)](https://doc.qt.io/qt-6/qmlapplications.html)
[![License](https://img.shields.io/badge/License-Apache--2.0-blue?style=for-the-badge)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Work%20in%20Progress-orange?style=for-the-badge)](#development-status)

<br />

**One place for the things you do every day.**

Plan your tasks, keep your notes, manage your time, and shape a workspace that works for you.

<br />

[Overview](#-overview) · [Features](#-features) · [Tech Stack](#tech-stack) · [Roadmap](#roadmap) · [Getting Started](#getting-started)

<br />

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

</div>

## ✦ Overview

**Baru** is an independent open-source project exploring a more personal approach to everyday productivity.

It aims to bring together the little things that make up a productive day: tasks to finish, ideas to remember, time to manage, and routines to keep.

Rather than forcing everything into a rigid workflow, Baru is designed to grow into a flexible personal workspace that adapts to how you work.

Built with **Rust, Qt 6, QML, and CXX-Qt**, Baru is both a practical productivity project and an opportunity to explore desktop application development.

### Why Baru?

``Baru`` comes from the Indonesian word baru, meaning ***new***.

The name reflects the idea behind this project: a _fresh start_, room for _improvement_, and the _freedom_ to grow beyond what it is today.

This project is built around that mindset. It starts with a simple idea, grows through experimentation, and evolves as new ideas and possibilities emerge.

This project is also a reflection of myself as a developer. It reminds me that <ins>there is always something new to learn and something better to build</ins>.

And apparently, remembering everything in your head wasn't a particularly scalable solution.

### ✧ The Idea

- **Stay organized** — manage tasks, notes, and everyday activities in one place.
- **Stay focused** — keep important information accessible without unnecessary friction.
- **Make it yours** — customize your workspace to suit your habits and preferences.
- **Work your way** — use the main application or access selected information through desktop widgets.
- **Keep growing** — explore integrations and tools that make daily workflows easier.

Baru isn't trying to replace every application on your computer. It just wants to make the everyday stuff a little less scattered.

And maybe help you finish that task you've been postponing since last week.

<br />

## ❖ Features

Baru is currently in early development. The features below describe the project's intended direction and are not necessarily implemented yet.

### Everyday Productivity

The core of Baru is helping you manage the small, recurring activities that make up your day.

- [ ] **Task Management**
  - Create, edit, complete, and organize tasks.
  - Track task priorities and completion status.
  - Explore deadlines, categories, and task organization.
  - Keep important tasks easy to find.

- [ ] **Notes & Quick Capture**
  - Create and manage general-purpose notes.
  - Capture ideas without interrupting your workflow.
  - Organize notes associated with specific dates.
  - Access frequently used notes more easily.

- [ ] **Daily Planning**
  - Organize tasks and notes around your daily activities.
  - Explore a daily overview of priorities and upcoming tasks.
  - Make it easier to decide what deserves your attention next.

- [ ] **Timers & Reminders**
  - Set timers for work sessions and everyday activities.
  - Schedule reminders for important tasks.
  - Explore desktop notifications and scheduled actions.

- [ ] **Startup Notes & Reminders**
  - Keep selected information accessible when starting a new session.
  - Explore reminders for unfinished tasks and important notes.

- [ ] **Local Data & Backup**
  - Implement reliable local persistence.
  - Explore data export, import, and backup options.
  - Make personal information easier to preserve and manage.

*The objective is to make staying organized easier, not to create another application you need to organize.*

### A More Personal Desktop

Productivity shouldn't stop at the application window.

Baru aims to make selected information accessible directly from the desktop, allowing users to keep useful tools nearby without constantly switching between applications.

- [ ] **Floating Clock**
  - Display hours, minutes, and seconds.
  - Support configurable time formats.
  - Customize typography, colors, size, opacity, and appearance.
  - Position the clock according to personal preference.

- [ ] **Pinned Notes / Sticky Notes**
  - Open notes in compact floating windows.
  - Write and edit notes directly inside a popup.
  - Create floating notes from the main Notes interface.
  - Keep important information visible while working in other applications.

- [ ] **Pinned Tasks**
  - Display selected tasks in a floating window.
  - Keep important priorities within sight.
  - Access task information without reopening the main application.

- [ ] **Widget Customization**
  - Move and resize supported widgets.
  - Customize their appearance and behavior.
  - Preserve widget positions and preferences between sessions.

- [ ] **Desktop Integration**
  - Explore always-on-top behavior where supported.
  - Investigate KDE Plasma integration.
  - Improve compatibility with other desktop environments where practical.

The goal is to make your desktop more useful without turning it into a second job.

Also, no, this isn't an attempt to recreate CSS `z-index` for your entire operating system. If only it were that easy.

### Optional Personal Assistant

Baru may eventually include optional AI-powered features to help with tasks that go beyond basic organization.

- [ ] **AI Assistant**
  - Explore integrations with configurable AI providers.
  - Allow users to manage their own API keys.
  - Investigate assistance for everyday tasks and personal workflows.

- [ ] **Voice Interaction**
  - Experiment with voice input and spoken responses.
  - Explore hands-free access to supported features.

- [ ] **Document Assistance**
  - Explore summarization and assistance for PDFs and text documents.
  - Help users extract useful information from supported documents.

AI functionality is intended to remain optional. Provider requirements, potential API costs, privacy implications, and external data handling should be clearly communicated.

Because apparently, a task manager can never just be a task manager anymore.

<br />

## Tech Stack

Baru is built around Rust and Qt, combining native application logic with a flexible declarative user interface.

| Technology | Purpose |
|:--|:--|
| [Rust](https://www.rust-lang.org/) | Core application logic |
| [Qt 6 Quick](https://doc.qt.io/qt-6/qtquick-index.html) | Application UI framework |
| [QML](https://doc.qt.io/qt-6/qmlapplications.html) | Declarative user interface |
| [CXX-Qt](https://github.com/KDAB/cxx-qt) | Rust and Qt interoperability |
| [Cargo](https://doc.rust-lang.org/cargo/) | Dependency management and builds |
| [Nix](https://nixos.org/) | Development environment support |

**The stack may evolve as the application grows. Additional dependencies and technologies will be documented when they become part of the implementation.**

<br />

## Architecture

Baru uses Rust for its application logic and Qt Quick/QML for its user interface, connected through CXX-Qt.

The project aims to keep application logic organized separately from UI components wherever practical. As the application grows, this separation should make it easier to maintain existing functionality and introduce new features.

### Project Structure

```text
Baru/
├── assets/                 # Fonts, icons, and resources
├── qml/
│   ├── components/         # Reusable QML components
│   └── main.qml            # Main application interface
├── src/                    # Rust application source
├── build.rs                # CXX-Qt / QML build configuration
├── Cargo.toml              # Package metadata and dependencies
├── Cargo.lock              # Locked dependency versions
├── shell.nix               # Development environment
├── LICENSE
└── README.md
```

**This is a simplified overview of the project structure. Directories and responsibilities may change as development progresses.**

### Data & Persistence

Reliable local data storage is an important part of the planned application.

The implementation will need to account for tasks, notes, preferences, reminders, and widget configuration while keeping personal data manageable.

Storage technologies and data architecture will be documented as they are selected and implemented.

<br />

## Roadmap

The roadmap describes the intended development direction, not a strict release schedule.

Priorities may change as the project evolves, technical limitations become clearer, and practical use reveals what matters most.

### Phase 1 — Foundation

- [ ] Stabilize the Rust and Qt Quick application structure.
- [ ] Refine the main window and reusable QML components.
- [ ] Establish consistent application styling.
- [ ] Improve the development and build workflow.
- [ ] Define the foundation for application settings and state management.

### Phase 2 — Everyday Essentials

- [ ] Develop the task management system.
- [ ] Build the notes and quick-capture experience.
- [ ] Explore daily planning and task organization.
- [ ] Implement timers and reminders.
- [ ] Establish reliable local data persistence.

### Phase 3 — A Workspace of Your Own

- [ ] Develop the floating widget foundation.
- [ ] Implement the customizable floating clock.
- [ ] Build pinned notes and sticky notes.
- [ ] Explore pinned tasks and quick-access actions.
- [ ] Persist widget positions, appearance, and preferences.

### Phase 4 — Better Daily Workflows

- [ ] Improve the daily overview and task experience.
- [ ] Expand customization options.
- [ ] Explore startup reminders and session persistence.
- [ ] Investigate KDE Plasma integration.
- [ ] Improve compatibility with supported desktop environments.
- [ ] Explore data backup, import, and export.

### Phase 5 — Beyond the Basics

- [ ] Explore configurable AI provider integrations.
- [ ] Investigate voice interaction.
- [ ] Experiment with document assistance.
- [ ] Evaluate privacy, security, and resource usage.
- [ ] Improve the application based on user feedback.

*Phases may overlap or change order. Scope creep isn't officially a feature, even if the roadmap occasionally disagrees.*

<br />

## Desktop Compatibility

Baru aims to provide a useful desktop experience, including floating widgets that can remain above ordinary application windows where supported.

However, desktop window management isn't the same as CSS stacking.

There is no universal `z-index: 999999` that guarantees a widget will appear above everything. Always-on-top behavior depends on the operating system, window manager, compositor, and the type of window involved.

Baru will explore these capabilities while prioritizing practical behavior and compatibility.

> [!IMPORTANT]
> Initial development focuses on Linux, with particular interest in KDE Plasma. Support for other desktop environments will depend on implementation and testing.
>
> ``Identical behavior across every desktop environment cannot be guaranteed.``

<br />

## Development Status

Baru is a work in progress maintained as an independent side project.

The application is being developed incrementally, starting with its core foundation before expanding into a broader productivity workspace.

Expect incomplete features, evolving architecture, occasional breaking changes, and documentation that sometimes needs to catch up with the code.

This is a learning project, but the ambition is to build something useful beyond the development environment of its creator.

In other words, the goal is to make software people can actually use, and not just another repository with a nice README.

### Current Priorities

1. Establish a reliable application foundation.
2. Refine the main interface and reusable components.
3. Develop practical task and note management.
4. Implement dependable local persistence.
5. Explore desktop widgets and customization.
6. Expand functionality based on real usage and feedback.

<br />

## Getting Started

### Prerequisites

Before building Baru, you'll need a compatible development environment with:

- [Rust toolchain](https://www.rust-lang.org/tools/install)
- [Qt 6 development libraries](https://www.qt.io/)
- [CXX-Qt](https://github.com/KDAB/cxx-qt)
- A compatible C++ compiler and build toolchain

Exact dependencies may vary depending on your Linux distribution and Qt installation.

### Clone the Repository

```bash
git clone --branch development https://github.com/Aarchfel/Baru.git
cd Baru
```

### Enter the Development Environment

If your environment supports the provided Nix shell:

```bash
nix-shell
```

### Check the Project

```bash
cargo check
```

### Run the Application

```bash
cargo run
```

> [!WARNING]
> Additional Qt configuration or system dependencies may be required. Since the project is still evolving, these instructions may change.
> 
> If you encounter an issue, check existing issues before opening a new one.

<br />

## License

Baru is intended to be distributed under the **Apache License 2.0**.

See [`LICENSE`](LICENSE) for the full license text.

<br />

<div align="center">

---

### 【 Do It, Learn It, Try It. 】

*Your desktop. Your workflow. Your questionable number of unfinished tasks.*

<br />

Created with curiosity, occasional frustration, and Rust by [**Aarchfel**](https://github.com/Aarchfel)

<sub>An independent open-source project · Started in October 2026</sub>

</div>

