import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

/// `Classe regrouppant des methodes de lecture de fichier`
/// `dans le dossier assets`
class AppAssetsReader {
  /// Lecture d'un fichier `json` dans `assets`
  /// puis retourner une String
  /// Veuillez fournir le nom du fichier uniquement
  /// ex: `mon_fichier.json`
  /// NB: Les fichiers `json` sont dans le dossier [assets/json]
  static Future<String> loadAssetJson({required String jsonName}) async {
    return await rootBundle.loadString('assets/json/$jsonName');
  }

  /// Lecture d'un fichier `text` dans `assets`
  /// puis retourner une String
  /// Veuillez fournir le nom du fichier uniquement
  /// ex: `mon_fichier.txt`
  /// NB: Les fichiers `txt` sont dans le dossier [assets/txt]
  static Future<String> loadAssetTxt({required String txtName}) async {
    return await rootBundle.loadString('assets/txt/$txtName');
  }
}
