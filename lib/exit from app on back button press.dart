import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SampleHome(),
  ));
}

class SampleHome extends StatelessWidget {
  get showAlert => null;

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("confirm exit???"),
              content: const Text("Do you really want to exit!!!"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("cancel")),
              ],
            );
          });
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: const Scaffold(
          body: Center(
        child: Text("Press back to exit"),
      )),
    );
  }
}
