# 🍽️ Aura Eats

<p align="center">
  <img src="https://via.placeholder.com/900x200.png?text=Aura+Eats+-+Food+Delivery" alt="Aura Eats banner" width="100%"/>
</p>

<p align="center">
  <img alt="Flutter" src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white">
  <img alt="Dart" src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white">
  <img alt="Firebase" src="https://img.shields.io/badge/Firebase-FFCA28?style=flat-square&logo=firebase&logoColor=black">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-lightgrey?style=flat-square">
  <img alt="Platform" src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green?style=flat-square">
</p>

---

## ✨ Description

**Aura Eats** is a modern, feature-rich food delivery mobile application built with Flutter. Discover restaurants, browse menus, manage your cart, place orders, and track your delivery — all in a seamless, intuitive interface designed for food enthusiasts.

---

## 🖼️ Screenshots

<p align="center">
  <img src="https://via.placeholder.com/360x780.png?text=Home+Screen" alt="home" width="200"/>
  <img src="https://via.placeholder.com/360x780.png?text=Product+Details" alt="product" width="200"/>
  <img src="https://via.placeholder.com/360x780.png?text=Cart" alt="cart" width="200"/>
  <img src="https://via.placeholder.com/360x780.png?text=Checkout" alt="checkout" width="200"/>
</p>

Replace placeholders with actual app screenshots stored in `assets/screenshots/`.

---

## ✅ Features

- 🔐 **User Authentication** – Secure login and signup with email verification
- 🏪 **Restaurant & Product Browsing** – Explore restaurants and food items with detailed descriptions
- 🛒 **Shopping Cart** – Add/remove items, adjust quantities, and manage your order
- 💳 **Seamless Checkout** – Secure payment processing and order placement
- 📋 **Order History** – View past orders, track order status, and reorder favorites
- 🔍 **Search & Filters** – Find restaurants and dishes quickly
- ⭐ **Ratings & Reviews** – See customer feedback and ratings
- 📱 **Responsive Design** – Optimized for all screen sizes

---

## 🛠️ Tech Stack

| Technology                                                                                | Purpose                                     |
| ----------------------------------------------------------------------------------------- | ------------------------------------------- |
| ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter)    | Cross-platform mobile framework             |
| ![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart)             | Programming language                        |
| ![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat-square&logo=firebase) | Backend, authentication, real-time database |
| ![GetX](https://img.shields.io/badge/GetX-00B4DB?style=flat-square)                       | State management & routing                  |
| ![Provider](https://img.shields.io/badge/Provider-Orange?style=flat-square)               | Dependency injection                        |

---

### Example Workflows

1. **Launch the app** → Sign up or login
2. **Browse restaurants** → Filter by cuisine, ratings, delivery time
3. **Add items to cart** → Customize orders (qty, special instructions)
4. **Proceed to checkout** → Enter delivery address and payment details
5. **Place order** → Track in real-time and view order history

---

## 📁 Folder Structure

```
aura_eats/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── root.dart                 # Root navigation widget
│   ├── splash_view.dart          # Splash screen
│   ├── core/
│   │   ├── constants/            # App constants, colors, strings
│   │   ├── network/              # API clients, network services
│   │   └── utils/                # Helper functions, extensions
│   ├── features/
│   │   ├── auth/                 # Authentication feature
│   │   ├── home/                 # Home screen & restaurant list
│   │   ├── product/              # Product details page
│   │   ├── cart/                 # Shopping cart management
│   │   ├── checkout/             # Order checkout & payment
│   │   └── orderHistory/         # Past orders view
│   └── shared/
│       ├── custom_button.dart    # Reusable button widget
│       ├── custom_text.dart      # Custom text styling
│       └── custom_textField.dart # Reusable text input
├── assets/
│   ├── logo/                     # App logos & branding
│   ├── home/                     # Home screen assets
│   ├── product/                  # Product images
│   ├── checkout/                 # Checkout assets
│   ├── details/                  # Details page assets
│   └── splash/                   # Splash screen assets
├── android/                      # Android-specific code
├── ios/                          # iOS-specific code
├── test/                         # Unit & widget tests
├── pubspec.yaml                  # Project dependencies
└── README.md                     # This file
```

---

## 🔗 API Integration

Aura Eats communicates with a backend API for restaurant, product, and order data.

**Base URL:** `https://api.aura-eats.com` (replace with actual endpoint)

### Key Endpoints

| Method | Endpoint                     | Description                   |
| ------ | ---------------------------- | ----------------------------- |
| GET    | `/restaurants`               | Fetch all restaurants         |
| GET    | `/restaurants/{id}/products` | Get products for a restaurant |
| POST   | `/orders`                    | Create a new order            |
| GET    | `/orders/{userId}`           | Fetch user's order history    |
| POST   | `/auth/login`                | User login                    |
| POST   | `/auth/register`             | User registration             |

<p align="center">
  Made with ❤️ by Mostafa Ghozy
</p>
