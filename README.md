# Password Manager

**Password Manager** is a secure Flutter application for storing and managing user credentials, built with Dart and Firebase. It ensures strong encryption, email verification, and two-factor authentication (2FA) to protect sensitive data.

## Key Features

* **User Registration and Authentication**

  1. Users register with a username, email, and master password.
  2. Master password is hashed using PBKDF2 (1000 iterations) with SHA-256 and device ID as salt.
  3. A unique symmetric key and initialization vector (IV) are generated and encrypted with the hashed password using AES-256-CBC, then stored in Firebase.

* **Email Verification**

  1. Verification link sent on registration.
  2. Users must verify their email before accessing the app.

* **Two-Factor Authentication (2FA)**

  1. Optional 2FA using Google Authenticator.
  2. Secret setup key is encrypted using the symmetric key and IV.
  3. Users enter the authenticator code during login if 2FA is enabled.

* **Vault Functionality**

  1. Users can add, view, update, and delete login credentials.
  2. Passwords are encrypted with the symmetric key before storage.
  3. Decryption is performed securely at runtime for viewing.

* **Secure Password Generator**

  1. Generate passwords with custom length, digits, and special characters.

## Technologies Used

* Flutter & Dart
* Firebase Authentication and Firestore
* PBKDF2 + SHA-256 for password hashing
* AES-256-CBC for encryption
* TOTP-based 2FA with Google Authenticator

## Security Highlights

* No sensitive data stored in plaintext.
* Encryption keys are never stored directly; only encrypted versions are saved.
* 2FA enhances login security for users who opt in.
