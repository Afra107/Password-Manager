# Password Manager

**Password Manager** is a secure Flutter application for storing and managing user credentials, built with Dart and Firebase. It ensures strong encryption, email verification, and two-factor authentication (2FA) to protect sensitive data.

## Key Features

### **User Registration and Authentication**
1. Users register with a username, email, and master password.
2. Master password is hashed using PBKDF2 (1000 iterations) with SHA-256 and device ID as salt.
3. A unique symmetric key and initialization vector (IV) are generated and encrypted with the hashed password using AES-256-CBC, then stored in Firebase.

### **Email Verification**
1. Verification link sent on registration.
2. Users must verify their email before accessing the app.

### **Two-Factor Authentication (2FA)**
1. Optional 2FA using Google Authenticator.
2. Secret setup key is encrypted using the symmetric key and IV.
3. Users enter the authenticator code during login if 2FA is enabled.

### **Vault Functionality**
1. Users can add, view, update, and delete login credentials.
2. Passwords are encrypted with the symmetric key before storage.
3. Decryption is performed securely at runtime for viewing.

### **Secure Password Generator**
1. Generate passwords with custom length, digits, and special characters.

## Technologies Used

- **Flutter & Dart**
- **Firebase**: Authentication and Firestore
- **PBKDF2 + SHA-256** for password hashing
- **AES-256-CBC** for encryption
- **TOTP-based 2FA** with Google Authenticator

## Security Highlights

- No sensitive data stored in plaintext.
- Encryption keys are never stored directly; only encrypted versions are saved.
- 2FA enhances login security for users who opt in.

## Setup and Run

Follow these steps to set up and run the project:

### **1. Install Flutter**
1. Download Flutter SDK from [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)  
2. Extract it to a suitable location (e.g., `C:\src\flutter` on Windows)  
3. Add Flutter to your system PATH:
   - **Windows**: `setx PATH "%PATH%;C:\src\flutter\bin"`  
   - **macOS/Linux**: Add `export PATH="$PATH:[PATH_TO_FLUTTER]/bin"` in your shell config file  
4. Run `flutter doctor` in the terminal to verify installation and fix any issues.

### **2. Clone the Repository**
```bash
git clone https://github.com/Afra107/Password-Manager.git
cd Password-Manager
```

### 3. Install Dependencies

    flutter pub get

### 4. Add Firebase Configuration

Download the Firebase config files and place them in the project:

- **Android**: `android/app/google-services.json`  
- **iOS**: `ios/Runner/GoogleService-Info.plist`

### 5. Run the Project

    flutter run

- For Chrome/Web: `flutter run -d chrome`
- For Android Device/Emulator: `flutter run -d <device_id>`
- For iOS Device/Simulator: `flutter run -d <device_id>`

### 6. Build APK (Android)

    flutter build apk --release

APK will be generated at `build/app/outputs/flutter-apk/app-release.apk`
