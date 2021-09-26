import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/application/auth/authbloc/auth_bloc.dart';
import 'package:todo/application/auth/singupfrom/signupform_bloc.dart';
import 'package:todo/domain/repositries/auth_repository.dart';
import 'package:todo/infrastructure/repositories/auth_repository_impl.dart';

final sl = GetIt.I; // sl == service locator

Future<void> init() async {
  //! state management
  sl.registerFactory(() => SignupformBloc(authRepository: sl()));
  sl.registerFactory(() => AuthBloc(authRepository: sl()));

  //! repos
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: sl()));

  //! extern
  final friebaseAuth = FirebaseAuth.instance;
  sl.registerLazySingleton(() => friebaseAuth);
}
