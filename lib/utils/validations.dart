class Validations {
  static String? isEmpty(String? value, String field) =>
      value == null || value.isEmpty ? '$field is Required' : null;

  static String? isNumber(String? value, String field) {
    final hasNumber = RegExp(r'^\d+$');
    if (value == null || value.isEmpty) return '$field is Required';
    return hasNumber.hasMatch(value) ? null : 'only Number is allowed';
  }

  static String? isEmail(String? value) {
    final hasEmail = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (value == null || value.isEmpty) return 'Email is Required';
    return hasEmail.hasMatch(value) ? null : 'Invalid email';
  }

  static String? isPassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is Required';
    if (value.length < 6) return 'Password requires at least 8 characters';
    return null;
  }

  
}