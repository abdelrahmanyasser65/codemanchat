import 'package:codemanchat/features/auth/presentation/views/login_view.dart';
import 'package:codemanchat/features/auth/presentation/views/sign_up_view.dart';
import 'package:codemanchat/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const rHomeView="/HomeView";
  static const rLoginView="/LoginView";
  static const rSignUp="/SignUpView";
  static final router=GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context,state)=>const SplashView(),
      ),
      GoRoute(
        path: rLoginView,
        builder: (context,state)=>const LoginView(),
      ),
      GoRoute(
        path: rSignUp,
        builder: (context,state)=>const SignUpView(),
      ),
      GoRoute(
        path: rHomeView,
        builder: (context,state)=>const SplashView(),
      ),
    ],
  );
}