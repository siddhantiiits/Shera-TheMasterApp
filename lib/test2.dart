// //dependencies:
// //flutter:
// //sdk: flutter
// //flutter_tts: ^1.2.6
// //translator: ^0.1.5
// //
// //
// //firebase_core: ^0.4.0+9
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:image/image.dart';
// import 'package:translator/translator.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Image img=
// //  Image copyRotate(Image src, num angle,
// //      {Interpolation interpolation = Interpolation.nearest});
//   int x = 0;
//   String trans;
//   GoogleTranslator translator = GoogleTranslator();
//   final FlutterTts flutterTts = FlutterTts();
//   File pickedImage;
//   bool isImageLoaded = false;
//
//   Future pickImage() async {
//     var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
//
//     setState(() {
//       pickedImage =
//           tempStore; // picked image wali file ko rotate krna h or fir picked img e hi save kradena h
//       isImageLoaded = true;
//     });
//   }
//
//   Future readText() async {
//     String temp = '';
//     FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
//     TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
//     VisionText readText = await recognizeText.processImage(ourImage);
//     int i = 0;
//
//     for (TextBlock block in readText.blocks) {
//       temp += '\n';
//
// //      temp+=block.text;
// //      temp+=' ';
// //      print(i.toString()+'\n');
// //      i++;
//
// //      print(block.text);
//       for (TextLine line in block.lines) {
//         for (TextElement word in line.elements) {
//           temp += word.text;
//           temp += ' ';
// //          print(word.text);
//         }
//       }
//     }
// //    await translator.translate(temp,to:'hi').then((output) {
// //      setState(() {
// //        trans = output.toString();
// //      });
// //    } );
//
//     await flutterTts.setLanguage("hi-IN");
//     await flutterTts.speak(temp);
//     print(temp);
//   }
//
//   RotateImg() {
//     setState(() {
//       x += 1;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             isImageLoaded
//                 ? Center(
//                     child: RotatedBox(
//                     quarterTurns: x,
//                     child: Container(
//                       height: 200,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: FileImage(pickedImage),
//                               fit: BoxFit.cover)),
//                     ),
//                   ))
//                 : Container(),
//             SizedBox(
//               height: 10,
//             ),
//             isImageLoaded
//                 ? RaisedButton(
//                     child: Text('Rotate Image'),
//                     onPressed: RotateImg,
//                   )
//                 : Container(),
//             RaisedButton(
//               child: Text('Pick an image'),
//               onPressed: pickImage,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             RaisedButton(
//               child: Text('Read Text'),
//               onPressed: readText,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
