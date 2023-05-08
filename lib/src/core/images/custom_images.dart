class CustomImages {
  static CustomImages? _instance;
  CustomImages._();
  static CustomImages get instance {
    _instance ??= CustomImages._();
    return _instance!;
  }

  static const masterclassLogo = 'assets/images/masterclass_logo.png';
  static const logo = 'assets/images/logo.png';
  static const man = 'assets/images/icon_man.svg';
  static const glasses = 'assets/images/icon_glasses.svg';
  static const toys = 'assets/images/icon_toys.svg';
  static const target = 'assets/images/icon_target.svg';
  static const github = 'assets/images/icon_github.svg';
  static const moon = 'assets/images/icon_moon.svg';
  static const facebook = 'assets/images/icon_facebook-f.svg';
  static const whatsapp = 'assets/images/icon_whatsapp.svg';
  static const instagram = 'assets/images/icon_instagram.svg';
  static const myPhoto = 'assets/images/my_photo.jpeg';
  
}
