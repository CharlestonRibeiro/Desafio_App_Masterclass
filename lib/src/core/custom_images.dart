class CustomImages {
  static CustomImages? _instance;
  CustomImages._();
  static CustomImages get instance {
    _instance ??= CustomImages._();
    return _instance!;
  }

  static const logo = 'assets/masterclass_logo.png';
}