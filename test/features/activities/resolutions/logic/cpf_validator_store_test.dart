import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass_app/features/activities/imports.dart';

void main() {
  test('Should return valid for cpf uprovideded', () {
    final store = CpfValidatorStore();

    store.validateCPF("04110977096");
    final status = store.state;

    expect(status, CPFValidationStatus.validCPF);
  });

  test('Should return insuficient numbers for cpf provided', () {
    final store = CpfValidatorStore();

    store.validateCPF("0");
    final status = store.state;

    expect(status, CPFValidationStatus.insuficientNumbers);
  });

  test('Should return invalid chars for cpf provided', () {
    final store = CpfValidatorStore();

    store.validateCPF("0-");
    final status = store.state;

    expect(status, CPFValidationStatus.invalidChars);
  });

  test('Should return invalid cpf for invalid cpf number provided', () {
    final store = CpfValidatorStore();

    store.validateCPF("00000000000");
    final status = store.state;

    expect(status, CPFValidationStatus.invalidCPF);
  });
}
