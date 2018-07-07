class ValidationMixin {
  String validateEmail(value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
  return null;
  }

  String validatePassword (value) {
    if (value.length < 8 ) {
      return 'Password must be at least 8 characters';
    }
  return null;
  }
}