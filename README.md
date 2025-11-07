# 🧠 Vokalook: Word Learning App with Home Screen Widget

[![Flutter](https://img.shields.io/badge/Platform-Flutter-blue.svg)](https://flutter.dev/)
[![Android Only](https://img.shields.io/badge/Target-Android%20Only-green.svg)](https://developer.android.com/)
[![License](https://img.shields.io/badge/License-Apache%202.0-red.svg)](./LICENSE)

---

### ✨ Project Summary

**Vokalook** is a mobile learning application designed to help users effortlessly expand their vocabulary in **any language pair they desire** (e.g., English-Turkish, Russian-German, etc.).

The application's core feature is to automatically display the words and their translations you wish to learn **directly on your Android home screen via a customizable widget**, at intervals you define.

Designed to work **completely locally and offline**, Vokalook aims to enhance the efficiency of your language learning process by integrating it into your device's interface.

### 🎯 Key Features

* **Multi-Language Pair Support (User-Defined Pairs):** Users can create and manage their own word sets in language pairs they define (e.g., Turkish-Russian, French-English).
* **Dynamic Home Screen Widget:** Customizable widgets that randomly display the selected words and their translations.
* **Material You Integration:** On Android 12 and above, the widgets will fully support Material You dynamic colors, adapting to the device's wallpaper.
* **Personal Word Management:** Users will be able to easily add, edit, and delete the words they want to learn.
* **Set Management:** The ability to easily switch between pre-defined or user-created word sets.
* **Learning Control:** Options to adjust the widget's update frequency and the maximum number of words to be shown daily.

### 🛠️ Technologies

| Category | Technology | Description |
| :--- | :--- | :--- |
| **Platform** | Flutter (Dart) | Cross-platform mobile application development framework. |
| **Target** | Android | The single platform focused on during the initial stage. |
| **Database** | Drift (SQLite ORM) | Local data storage and management. |
| **Design** | Material 3 / Material You | Modern and dynamic user interface. |
| **Background** | WorkManager | For periodic widget update tasks. |

### 📈 Development Status (Work In Progress)

The project is currently in the **active development stage**.

✅ **Completed:**
* **Database Layer:** The basic database schema has been defined using Drift ORM.
* **Set Management:** The Word Set table and basic CRUD (create/list) functionalities have been added. (Set creation was added for testing purposes, further development is required).
* **Initial Data:** A default word set is automatically created when the application is launched for the first time.
*  *UI:* The UI should be improved; it is currently only for testing purposes.

### 🤝 Contributing

**Vokalook** is an open-source project and is open to all forms of contributions. If you would like to add features aligned with the development roadmap, fix bugs, or assist with documentation, please open an **Issue** or submit a **Pull Request**.

### 🧑‍💻 Note from the Developer

**Note:** This project is being developed for **learning and personal development purposes**. I may have some shortcomings or areas that need improvement; therefore, I am open to all constructive criticism and feedback.

### 📄 License

This project is open source and is licensed under the **Apache License 2.0**.