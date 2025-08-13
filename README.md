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
  ![Splash Light](https://i.postimg.cc/05t8tv4P/splash-light.png)
  
- **Dark Mode:**  
  ![Splash Dark](https://i.postimg.cc/wTZ9pVHr/splash-dark.png)  

---

### 2️⃣ Home Screen
- Displays a list of meals fetched from API.  
- Supports pull-to-refresh.  
  
  ![Home Light](https://i.postimg.cc/8c3gTp8v/home.png)  
 

---

### 3️⃣ Details Screen
- Shows detailed information about a selected meal (image, description, ingredients).  

  ![Details Light](https://i.postimg.cc/HscCBy59/Screenshot-20250813-194156.png)  


---

### 4️⃣ Search Screen
- Allows searching for meals by name.  
- Displays results dynamically as user types.  
  
  ![Search Light](https://i.postimg.cc/hGbnVRxF/search.png)  
 

---

### 5️⃣ Localization Example
- The app supports **two languages**: **English** and **Arabic**.  
- Users can switch languages at runtime from the settings or directly from the app bar.  
- All UI elements and text update instantly without restarting the app.

**English Example:**  
![English Localization](https://i.postimg.cc/8c3gTp8v/home.png)  

**Arabic Example:**  
![Arabic Localization](https://i.postimg.cc/P5W9RzqY/localization.png)  

---

## 📦 How to Run

```bash
flutter pub get
flutter run
