import 'package:codemanchat/app/app.dart';
import 'package:codemanchat/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
Bloc.observer=MyBlocObserver();
  runApp(const ChatApp());
}
