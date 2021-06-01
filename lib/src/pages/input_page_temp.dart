// import 'package:flutter/material.dart';
//
// // Define a custom Form widget.
// class InputPage extends StatefulWidget {
//   @override
//   _Inputpage createState() => _Inputpage();
// }
//
// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _Inputpage extends State<InputPage> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final myController = TextEditingController();
//
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Retrieve Text Input'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children:<Widget>[
//           _createInput(),
//           _createPerson()
//         ],
//
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         // When the user presses the button, show an alert dialog containing
//         // the text that the user has entered into the text field.
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 // Retrieve the text the that user has entered by using the
//                 // TextEditingController.
//                 content: Text(myController.text),
//               );
//             },
//           );
//         },
//         tooltip: 'Show me the value!',
//         child: Icon(Icons.text_fields),
//       ),
//     );
//   }
//
//   Widget _createPerson() {
//     return ListTile(
//       title: Text(myController.text),
//     );
//   }
//
//   Widget _createInput() {
//     return TextField(
//       controller: myController,
//       onChanged: (valor){
//         myController.text=valor;
//         print(myController);
//       },
//     );
//   }
// }
