# 🍽 Meal App — Flutter + GetX

A mobile application built using **Flutter** and **GetX** for state management, routing, and dependency injection.  
It displays meals from **TheMealDB API** with support for **search, localization, light/dark themes**, and local storage of user preferences.

---

## 📋 Features

### ⚡ State Management with GetX
- All screens use dedicated GetX Controllers.
- State changes update the UI automatically via `Obx` or `update()`.
- **Screenshot:**
  ![State Management](screenshots/features/state_management.png)

---

### 🌍 Localization (English / Arabic)
- Switch between English and Arabic at runtime.
- All text comes from translation files.
- Language preference is saved locally and restored on restart.
- **Screenshot:**
  ![Localization](screenshots/features/localization.png)

---

### 🌓 Light & Dark Mode
- Toggle between light and dark themes.
- Theme preference is stored locally and restored on restart.
- **Screenshot:**
  ![Theme Mode](screenshots/features/theme_mode.png)

---

### 🔍 Search Meals by Name
- Search bar to find meals dynamically.
- Search query is saved locally and restored when the app restarts.
- **Screenshot:**
  ![Search](screenshots/features/search.png)

---

### 🍽 Meal Details
- Detailed view of the selected meal including image, name, and description.
- **Screenshot:**
  ![Details](screenshots/features/details.png)

---

### 💾 Local Storage
- Stores:
  - Selected language.
  - Selected theme mode.
  - Last search query.
- Uses **GetStorage** for persistence.
- **Screenshot:**
  ![Local Storage](screenshots/features/local_storage.png)

---

### 🔁 Pull-to-Refresh
- Refresh the meals list by swiping down.
- **Screenshot:**
  ![Pull-to-Refresh](screenshots/features/pull_to_refresh.png)

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

1. **Splash Screen**  
   - Loads saved preferences (language/theme).  
   - Fetches initial data from API.  
   - Navigates to the main screen.  
   - **Screenshot:**  
     ![Splash](screenshots/screens/splash.png)

2. **Main Screen**  
   - Displays a list of meals.  
   - Allows searching for meals.  
   - Language and theme toggle.  
   - **Screenshot:**  
     ![Home](screenshots/screens/home.png)

3. **Details Screen**  
   - Displays full details of the selected meal.  
   - **Screenshot:**  
     ![Details](screenshots/screens/details.png)

---

## 📦 How to Run

```bash
flutter pub get
flutter run
