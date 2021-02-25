import 'dart:async';
import 'package:flutter/material.dart';
import 'package:preferences/preferences.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings',
              style: TextStyle(
                color: Colors.black87,
              )),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: PreferencePage([
          PreferenceTitle('General'),
          // SwitchPreference(
          //   'Enable Darkmode',
          //   'dark_mode',
          //   defaultVal: false,
          //   desc: 'Changes Color Theme',
          // ),
          PreferenceDialogLink(
            'Theme Color',
            dialog: PreferenceDialog(
              [
                RadioPreference('System Default', 'system', 'ui_theme',
                    isDefault: true //TODO: is defalut not working
                    ),
                RadioPreference(
                  'Light Theme',
                  'light',
                  'ui_theme',
                  // onSelect: () {
                  //   DynamicTheme.of(context).setBrightness(Brightness.light);
                  // },
                ),
                RadioPreference(
                  'Dark Theme',
                  'dark',
                  'ui_theme',
                  // onSelect: () {
                  //   DynamicTheme.of(context).setBrightness(Brightness.dark);
                  // },
                ),
              ],
              title: 'Theme Color',
              cancelText: 'Cancel',
              submitText: 'Save',
              onlySaveOnSubmit: true,
            ),
          ),
        ]));
  }
}
