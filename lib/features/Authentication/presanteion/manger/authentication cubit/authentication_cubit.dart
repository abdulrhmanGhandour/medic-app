import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

 

  Future<void> loginUser({required String email, required String password}) async {
    emit(LoginLoding());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errMessage: 'user not found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(errMessage: 'wrong password'));
      }
    } catch (e) {
      emit(LoginFailure(errMessage: 'someting is worng'));
    }
  }

  Future<void> registerUser({required String email, required String password}) async {

    emit(RegisterLoding());
    try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailuer(errMesage: 'weak password'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFailuer(errMesage: 'email already in use'));
      }
    } catch (e) {
      emit(RegisterFailuer(errMesage: 'Somting was woring'));
    }
  }

  @override
  void onChange(Change<AuthenticationState> change) {
    
    super.onChange(change);
    print(change);
  }
}
