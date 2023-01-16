class CpfValidatorViewModel {
  CPFValidationStatus _cpfValidationStatus = CPFValidationStatus.initialState;

  CPFValidationStatus get cpfValidationStatus => _cpfValidationStatus;
}

enum CPFValidationStatus {
  initialState,
  validCPF,
  insuficientNumbers,
  invalidChars,
  invalidCPF
}
