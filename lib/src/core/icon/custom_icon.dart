class CustomIcon {
  static CustomIcon? _instance;
  CustomIcon._();
  static CustomIcon get instance {
    _instance ??= CustomIcon._();
    return _instance!;
  }

  static const github = 'assets/icons/Icon_awesome-github.svg';
}
