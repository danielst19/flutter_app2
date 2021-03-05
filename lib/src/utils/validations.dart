import 'dart:async';

class Validations {
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, skin){

      if(password.length >= 6){
        skin.add(password);
      }else{
        if(password.length > 0){
          skin.addError('La contraseña debe ser mayor o igual a 6 digitos.');
        }else{
          skin.add(password);
        }
      }

      /* if(password.length >= 6){
        skin.add(password);
      }else {
        skin.addError('');
      } */
    }
  );

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, skin){
      bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

      if(emailValid){
        skin.add(email);
      }else {
        skin.addError('El email no es válido.');
      }
    }
  );
}