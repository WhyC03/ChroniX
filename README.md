
# 🚀 ChroniX Blog App

<p align="center">
  <img src="assets/logo.png" alt="ChroniX Blog App Logo" width="150"/>
</p>

ChroniX Blog App is a mobile blogging platform built with **Flutter**, using **Supabase** for backend services, **Hive** for local storage, **GetIt** for dependency injection, and structured with **Clean Architecture**. It uses **Bloc** for robust state management.

---

## ✨ Features

✅ Login & Sign Up with Supabase Auth  
✅ Upload Blogs  
✅ View Blogs in a feed  
✅ View Blogs in a separate detailed Blog View Page  
✅ Clean and maintainable codebase using Clean Architecture  
✅ Dependency injection using GetIt  
✅ Offline storage with Hive  

---

## 🛠 Tech Stack

- **Flutter** - Cross-platform UI toolkit  
- **Supabase** - Backend as a service (Auth + Database + Storage)  
- **Hive** - Lightweight & blazing fast local NoSQL database  
- **GetIt** - Simple service locator for dependency injection  
- **Bloc** - Predictable state management  

---

## 🚀 Getting Started

### 🔧 Installation

1. Clone the repository
   ```bash
   git clone https://github.com/your-username/chronix-blog-app.git
   cd chronix-blog-app
   ```

2. Install dependencies
   ```bash
   flutter pub get
   ```

3. Run the project
   ```bash
   flutter run
   ```

---

## ⚙️ Setting up Supabase

This project uses Supabase for **Authentication**, **Database**, and **Storage**.  

### 📌 Steps to configure Supabase:

1. Create a Supabase project at [https://app.supabase.com](https://app.supabase.com).

2. Obtain your **Project URL** and **Anon Public Key** from your project settings.

3. In your Flutter project under  
   ```
   lib/core/secrets/
   ```
   create a file named  
   ```
   app_secrets.dart
   ```

4. Copy the following code into `app_secrets.dart`:

   ```dart
   class AppSecrets {
     static const supabaseURL = 'Your-Supabase-URL';
     static const supabaseAnonKey = 'Your-Supabase-AnonKey';
   }
   ```

5. Replace `'Your-Supabase-URL'` and `'Your-Supabase-AnonKey'` with your actual Supabase credentials.

6. Make sure to add the Supabase Flutter package in your `pubspec.yaml`:

   ```yaml
   dependencies:
     supabase_flutter: ^1.0.0
   ```

7. Run:

   ```bash
   flutter pub get
   ```

---

## 📂 Folder Structure

The project follows **Clean Architecture**, typically organized like this:

```
lib/
│
├── core/            # Core utilities, constants, themes, secrets
│
├── features/        
│   ├── auth/    
│   │   ├── data/    # Data sources, models, repositories impl
│   │   ├── domain/  # Entities, repository interfaces, use cases
│   │   └── presentation/   # Login & SignUp logic, UI, bloc
│   └── blog/        
│       ├── data/    # Data sources, models, repositories impl
│       ├── domain/  # Entities, repository interfaces, use cases
│       └── presentation/   # UI, blocs, widgets
│
├── init_dependencies.dart           # For all the connection and stuff
├── init_dependencies.main.dart      # For the the import extensions of the init_dependencies.dart
└── main.dart
```

---


