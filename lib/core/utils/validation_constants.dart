class ValidationConstants {
  static final emailRegex = RegExp(
    r'^[^\s@]+@[^\s@]+\.[^\s@]+$',
  );

  static final passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$',
  );

  static const minPasswordLength = 6;
  static const maxPasswordLength = 20;
  static const maxEmailLength = 70;

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return null;
    final trimmedValue = value.trim();

    if (!emailRegex.hasMatch(trimmedValue)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.length < minPasswordLength) return 'Minimum 6 characters';
    if (value.length > maxPasswordLength) return 'Maximum 20 characters';
    if (!passwordRegex.hasMatch(value)) {
      return 'Must contain letters and numbers';
    }
    return null;
  }
}
