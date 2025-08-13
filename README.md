# 🍽 Meal App — Flutter + GetX

A mobile application built using **Flutter** and **GetX** for state management, routing, and dependency injection.  
It displays meals from **TheMealDB API** with support for **search, localization, light/dark themes**, and local storage of user preferences.

---

## 📋 Features

- ⚡ **State Management** with GetX controllers and reactive variables.
- 🌍 **Localization** (English / Arabic) with runtime switching.
- 🌓 **Light & Dark mode** with persistent user preference.
- 🔍 **Search** meals by name.
- 🍽 **Meal Details** view for selected meals.
- 💾 **Local Storage** for preferences and last search.
- 🔁 **Pull-to-refresh** to update meals list.

---

## 🛠 Tech Stack

- **State Management:** GetX  
- **Routing:** GetX Named Routes  
- **Dependency Injection:** Get.put / Get.lazyPut  
- **HTTP Requests:** Dio  
- **Local Storage:** GetStorage  
- **Localization:** GetX Translations  
- **API:** [TheMealDB](https://www.themealdb.com/api.php)  

---

## 🗂 Screens Overview

### 🌞 Light Mode
| Splash | Home | Details | Search |
|--------|------|---------|--------|
| ![Splash Light](screenshots/light/splash.png) | ![Home Light](screenshots/light/home.png) | ![Details Light](screenshots/light/details.png) | ![Search Light](screenshots/light/search.png) |

---

### 🌚 Dark Mode
| Splash | Home | Details | Search |
|--------|------|---------|--------|
| ![Splash Dark](screenshots/dark/splash.png) | ![Home Dark](screenshots/dark/home.png) | ![Details Dark](screenshots/dark/details.png) | ![Search Dark](screenshots/dark/search.png) |

---

### 🌍 Localization
| English Home | Arabic Home |
|--------------|-------------|
| ![English Home](screenshots/localization/home_en.png) | ![Arabic Home](screenshots/localization/home_ar.png) |

---

## 📦 How to Run

```bash
flutter pub get
flutter run
