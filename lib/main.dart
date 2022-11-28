import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/models/note/notes_operation.dart';
import 'package:task_manager/models/post/post_operation.dart';
import 'package:task_manager/screen/home_screen.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider<NotesOperation>(
    //   create: (context) => NotesOperation(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: HomeScreen(),
    //   ),
    // );

    return MultiProvider(
      providers: [
        ListenableProvider<NotesOperation>(
            create: (context) => NotesOperation()),
        ListenableProvider<PostOperation>(create: (context) => PostOperation())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
