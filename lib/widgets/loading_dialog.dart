import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        content: const Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(
              width: 20,
            ),
            Text("Loading..")
          ],
        ));
  }
}
