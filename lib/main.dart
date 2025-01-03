import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kum/bloc/task.block/bloc.dart';
import 'package:kum/pages/main.page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskBloc>(
          create: (context) => TaskBloc(),
        )
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
     
        brightness: Brightness.dark,

        primaryColor: const Color.fromARGB(255, 0, 83, 3),

        scaffoldBackgroundColor: Colors.black,

        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 0, 83, 3),
          foregroundColor: Colors.white, 
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 83, 3),
            foregroundColor: Colors.black, 
          ),
        ),

    
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          bodyMedium: TextStyle(color: Colors.green[300]),
          bodySmall: TextStyle(color: const Color.fromARGB(255, 0, 83, 3)),
        ),

    
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color.fromARGB(255, 0, 83, 3),
          foregroundColor: Colors.black,
        ),

       
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 0, 83, 3),
        ),
        useMaterial3: true,
      ),
          title: "-L-I-S-T-",
          home: MyHomePage(title: "HOME"),
      
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
                Text(
                  "_--_--_",
                  style: TextStyle(
                      letterSpacing: 3.14,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                CupertinoButton(
                  onPressed: () => {Navigator.push<void>(
                    context, 
                    MaterialPageRoute(builder: (BuildContext context) => const MainPage())
                  )},
                  color: const Color.fromARGB(255, 0, 83, 3),
                  focusColor: const Color.fromARGB(255, 1, 46, 3),
                  child:  Text("^ ___ ^"),

                ),
            ],
          ),
        ),
      );
  }

}
