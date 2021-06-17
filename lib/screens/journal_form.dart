import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:pressin/onboardscreens/button.dart';

import 'package:pressin/services/contact.dart';
import 'package:pressin/services/contact_service.dart';

class JournalForm extends StatefulWidget {
  JournalForm({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _JournalFormState createState() => new _JournalFormState();
}

class _JournalFormState extends State<JournalForm> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';
  Contact newContact = new Contact();
  final TextEditingController _controller = new TextEditingController();

  Future<Null> _chooseDate(
      BuildContext context, String initialDateString) async {
    var now = new DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;
    initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now)
        ? initialDate
        : now);

    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now());

    if (result == null) return;

    setState(() {
      _controller.text = new DateFormat.yMd().format(result);
    });
  }

  bool isValidDob(String dob) {
    if (dob.isEmpty) return true;
    var d = convertToDate(dob);
    return d != null && d.isBefore(new DateTime.now());
  }

  DateTime convertToDate(String input) {
    try {
      var d = new DateFormat.yMd().parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  bool isValidPhoneNumber(String input) {
    final RegExp regex = new RegExp(r'^\(\d\d\d\)\d\d\d\-\d\d\d\d$');
    return regex.hasMatch(input);
  }

  bool isValidEmail(String input) {
    final RegExp regex = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event

      print('Form save called, newContact is now up to date...');
      print('Name: ${newContact.name}');
      print('Dob: ${newContact.dob}');
      print('Phone: ${newContact.phone}');
      print('Email: ${newContact.email}');
      print('Favorite Color: ${newContact.favoriteColor}');
      print('========================================');
      print('Submitting to back end...');
      var contactService = new ContactService();
      contactService.createContact(newContact).then((value) =>
          showMessage('New contact created for ${value.name}!', Colors.blue));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xaffF0F3F4),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            MaterialCommunityIcons.chevron_left,
            size: 30,
            color: Color(0xaffd97d54),
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        title: Text("Take a Note", style: TextStyle(color: Color(0xff5f5b7a))),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.receipt),
                      hintText: 'Enter your Note Title',
                      labelText: 'Note Title',
                    ),
                    inputFormatters: [new LengthLimitingTextInputFormatter(30)],
                    validator: (val) => val.isEmpty ? 'Name is required' : null,
                    onSaved: (val) => newContact.name = val,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 20, 0),
                    child: TextField(
                      maxLines: 25,
                      decoration: InputDecoration.collapsed(
                          hintText: "Enter your thoughts here"),
                    ),
                  ),
                  new FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.color_lens),
                          labelText: 'Note Color',
                          errorText: state.hasError ? state.errorText : null,
                        ),
                        isEmpty: _color == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton<String>(
                            value: _color,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                newContact.favoriteColor = newValue;
                                _color = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                    validator: (val) {
                      return val != '' ? null : 'Please select a color';
                    },
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: PressinButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        text: "Save",
                        background: Color(0xffd97d54),
                        radius: 30,
                        fontSize: 15,
                        elevation: 1,
                        width: 100,
                      )),
                ],
              ))),
    );
  }
}
