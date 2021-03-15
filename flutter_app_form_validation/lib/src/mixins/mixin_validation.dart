
class ValidationMixin{
  String emailValidation(String value){

    if(!value.contains("@")){
      return "This is not email format";
    }

    return null;
  }

  String passwordValidation(String value){

    if(value.length < 4){
      return "this password less than 4";
    }

    return null;
  }

}