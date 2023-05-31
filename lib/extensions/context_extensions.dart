import 'package:flutter/material.dart';

extension ContxetExtension on BuildContext {

  void showSnackBar({required String message, bool error = false,}){

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.blue,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        //onVisible: () => print('Visible'),
        action: SnackBarAction(
            label: 'UNDO',
            textColor: Colors.white,
            onPressed: (){}
          //textColor: Colors.white,
        ),
      ),
    );
  }

}

