import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:codemanchat/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>SignUpCubit()),
            BlocProvider(create: (context)=>LoginCubit()),
            BlocProvider(create: (context)=>ChatCubit()),
          ],
          child: MaterialApp.router(
            routerConfig:AppRouter.router ,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
            ),
          ),
        );
      },
    );
  }
}
