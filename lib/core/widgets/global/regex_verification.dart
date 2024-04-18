class AppRegex {
  /// Voici une explication
  /// r'^
  ///  (?=.*[A-Z])       // devrait contenir au moins un majuscule
  ///  (?=.*[a-z])       // devrait contenir au moins une minuscule
  ///  (?=.*?[0-9])      // devrait contenir au moins un chiffre
  ///  (?=.*?[!@#\$&*~]) // devrait contenir au moins un personnage spécial
  ///  .{8,}             // doit contenir au moins 6 caractères
  /// $
 String? validateName(String value) {
    if (value.isEmpty) {
      return 'Veuillez entrer votre nom';
    } else {
      if (value.length < 6) {
        return 'Saisir votre nom & prénom';
      } else {
        return null;
      }
    }
  }

  String? validatePhone(String value) {
    RegExp regex = RegExp(r'^([0-9]\d{9}|2[12356]\d{7}|30\d{7})$');
    if (value.isEmpty) {
      return 'Veuillez entrer un numéro';
    } else {
      if (value.length < 10 || value.length > 10) {
        return 'Numéro invalide';
      } else if (!regex.hasMatch(value)) {
        return 'Sasir des chiffres';
      } else {
        return null;
      }
    }
  }

  String? validateShopName(String value) {
    if (value.isEmpty) {
      return 'Veuillez entrer le nom de votre Commerce';
    } else {
      if (value.length == 1) {
        return 'Saisir un nom de Valide';
      } else {
        return null;
      }
    }
  }

  String? validateEmailAddress(String value) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regex.hasMatch(value)) {
      return 'email invalide';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
    if (value.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (value.length < 6) {
        return 'Au moins 6 caractères';
      } else if (!regex.hasMatch(value)) {
        return 'Sasir majuscules, minuscules, chiffres';
      } else {
        return null;
      }
    }
  }

  String? validatePasswordConfirm(
      {required String password, required String passwordConfirm}) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{6,}$');
    if (password.isEmpty) {
      return 'Veuillez saisir le mot de passe';
    } else {
      if (password.length < 6) {
        return 'Au moins 6 caractères';
      } else if (!regex.hasMatch(password)) {
        return 'Sasir majuscules, minuscules';
      } else if (password.toString() != passwordConfirm &&
          passwordConfirm.isEmpty) {
        return 'Veuillez saisir votre nouveau mot de passe dans ce champs';
      } else if (password.toString() != passwordConfirm) {
        return 'Les deux mots de passe saisies ne sont pas identiques';
      }
      {
        return null;
      }
    }
  }

  // ignore: non_constant_identifier_names
  String? DefaultPassword(String value) {
    if (value.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (value != '00000') {
        return 'Entrer le mot de passe par défaut';
      } else {
        return null;
      }
    }
  }

}
