import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle defaultButtonStyle() {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent), // Butonun arka plan rengini ayarlar.
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Buton metninin rengini ayarlar.
      padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0)), // Butonun iç kenar boşluğunu ayarlar.
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Butonun köşe yuvarlama yarıçapını ayarlar.
        ),
      ),
      shadowColor: WidgetStateProperty.all<Color>(Colors.black.withOpacity(0.5)), // Butonun gölge rengini ayarlar.
      elevation: WidgetStateProperty.all<double>(5.0), // Butonun yüksekliğini (gölge) ayarlar.
    );
  }
}

