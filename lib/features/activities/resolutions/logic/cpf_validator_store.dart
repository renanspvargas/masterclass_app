import 'package:masterclass_app/imports.dart';

class CpfValidatorStore {
  final _cpfValidationStatus$ = ValueNotifier(CPFValidationStatus.initialState);

  ValueNotifier<CPFValidationStatus> get cpfValidationStatus =>
      _cpfValidationStatus$;

  void validateCPF(String cpf) {
    if (!_onlyHasNumbers(cpf)) {
      _cpfValidationStatus$.value = CPFValidationStatus.invalidChars;
    } else if (!_hasCorrectLength(cpf)) {
      _cpfValidationStatus$.value = CPFValidationStatus.insuficientNumbers;
    } else if (!_validateCpfNumbers(cpf, NumberToValidate.number10) ||
        !_validateCpfNumbers(cpf, NumberToValidate.number11)) {
      _cpfValidationStatus$.value = CPFValidationStatus.invalidCPF;
    } else {
      _cpfValidationStatus$.value = CPFValidationStatus.validCPF;
    }
  }

  bool _onlyHasNumbers(String data) {
    try {
      int.parse(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  bool _hasCorrectLength(String data) {
    if (data.length == 11) return true;
    return false;
  }

  bool _validateCpfNumbers(String data, NumberToValidate numberToValidate) {
    int currentIndex = 0;
    int currentSum = 0;
    int decCounterRange = 0;

    switch (numberToValidate) {
      case NumberToValidate.number10:
        decCounterRange = 10;
        break;
      case NumberToValidate.number11:
        decCounterRange = 11;
        break;
    }

    for (int decCounter = decCounterRange; decCounter >= 2; decCounter--) {
      int cpfnumber = int.parse(data[currentIndex]);
      currentSum = currentSum + (cpfnumber * decCounter);
      currentIndex = currentIndex + 1;
    }

    int result = currentSum * 10;
    result = result % 11;

    if (result == 10) result = 0;

    if (result == int.parse(data[decCounterRange - 1])) return true;
    return false;
  }
}

enum CPFValidationStatus {
  initialState,
  validCPF,
  insuficientNumbers,
  invalidChars,
  invalidCPF
}

enum NumberToValidate { number10, number11 }
