class CpfValidatorViewModel {
  CPFValidationStatus _cpfValidationStatus = CPFValidationStatus.initialState;

  CPFValidationStatus get cpfValidationStatus => _cpfValidationStatus;

  void validateCPF(String cpf) {
    if (!_onlyHasNumbers(cpf)) {
      _cpfValidationStatus = CPFValidationStatus.invalidChars;
    } else if (!_hasCorrectLength(cpf)) {
      _cpfValidationStatus = CPFValidationStatus.insuficientNumbers;
    } else if (!_validate10Number() && !_validate11Number()) {
      _cpfValidationStatus = CPFValidationStatus.invalidCPF;
    } else {
      _cpfValidationStatus = CPFValidationStatus.validCPF;
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

  bool _validate10Number() {
    return true;
  }

  bool _validate11Number() {
    return true;
  }
}

enum CPFValidationStatus {
  initialState,
  validCPF,
  insuficientNumbers,
  invalidChars,
  invalidCPF
}
