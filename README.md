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
 
- **Local Storage:** flutter secure storage  
- **Localization:** GetX Translations  
- **API:** [TheMealDB](https://www.themealdb.com/api.php)  

---

## 🗂 Screens Overview

### 1️⃣ Splash Screen
- Displays app logo and initializes settings (theme & localization).
- Automatically navigates to Home Screen.
- **Light Mode:**  
  ![Splash Light]((https://raw.githubusercontent.com/ahmedfarouk22222/Meal_APP/main/assets/screenshots/splash_light.png)
  
- **Dark Mode:**  
  ![Splash Dark](screenshots/dark/splash.png)  

---

### 2️⃣ Home Screen
- Displays a list of meals fetched from API.  
- Supports pull-to-refresh.  
- **Light Mode:**  
  ![Home Light](screenshots/light/home.png)  
- **Dark Mode:**  
  ![Home Dark](screenshots/dark/home.png)  

---

### 3️⃣ Details Screen
- Shows detailed information about a selected meal (image, description, ingredients).  
- **Light Mode:**  
  ![Details Light](screenshots/light/details.png)  
- **Dark Mode:**  
  ![Details Dark](screenshots/dark/details.png)  

---

### 4️⃣ Search Screen
- Allows searching for meals by name.  
- Displays results dynamically as user types.  
- **Light Mode:**  
  ![Search Light](screenshots/light/search.png)  
- **Dark Mode:**  
  ![Search Dark](screenshots/dark/search.png)  

---

### 5️⃣ Localization Example
- The app supports **two languages**: **English** and **Arabic**.  
- Users can switch languages at runtime from the settings or directly from the app bar.  
- All UI elements and text update instantly without restarting the app.

**English Example:**  
![English Localization](screenshots/localization/home_en.png)  

**Arabic Example:**  
![Arabic Localization](screenshots/localization/home_ar.png)  

---

## 📦 How to Run

```bash
flutter pub get
flutter run
