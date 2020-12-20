import 'package:flutter/material.dart';
import 'package:lab2/models/MainModel.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String text;

  Future<void> pressButton(BuildContext context) async {
    String textReturn =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SettingsPopup(text);
    }));
    setState(() {
      text = textReturn;
    });
    Provider.of<MainModel>(context, listen: false).userName = textReturn;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      text ??= ModalRoute.of(context).settings.arguments;
    });
    return SettingsList(
      sections: [
        SettingsSection(
          title: 'Section',
          tiles: [
            SettingsTile(
              title: 'Введіть ваше ім\'я',
              subtitle: text,
              leading: Icon(Icons.language),
              onPressed: (BuildContext context) {
                pressButton(context);
                // createTextFieldEditor(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class SettingsPopup extends StatelessWidget {
  String text;

  SettingsPopup(this.text);

  @override
  Widget build(BuildContext context) {
    TextEditingController customController = TextEditingController();
    customController.text = text;
    return AlertDialog(
      title: Text("Введіть текст"),
      content: TextField(
        controller: customController,
      ),
      actions: <Widget>[
        MaterialButton(
          elevation: 5.0,
          child: Text("Ок"),
          onPressed: () {
            Navigator.of(context).pop(customController.text.toString());
          },
        ),
      ],
    );
  }
}
