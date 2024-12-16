

class Validation {
  static nameValidator({required String nameValue}) {
    if (nameValue.isEmpty) {
      return "Please Enter Name";
    }
  }

  static addressValidation({required String nameValue}) {
    if (nameValue.isEmpty) {
      return "Please Enter Address";
    }
  }
}
