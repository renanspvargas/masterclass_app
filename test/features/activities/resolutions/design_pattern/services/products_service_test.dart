import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:masterclass_app/features/activities/resolutions/design_pattern/errors/products_errors.dart';
import 'package:masterclass_app/imports.dart';
import 'package:mocktail/mocktail.dart';

class ClientMock extends Mock implements Client {}

void main() async {
  late ClientMock client;
  late ProductsService service;

  setUpAll(() {
    registerFallbackValue(Uri.parse('uri'));
  });

  setUp(() {
    client = ClientMock();
    service = ProductsService(client);
  });

  test("Should return list of Products Model", (() async {
    final response = Response(responseBody, 200);

    when(
      () => client.get(any()),
    ).thenAnswer(
      (_) async => response,
    );

    final result = await service.getProducts();

    expect(result, isA<List<DesignPatternCommonModel>>());
    expect(result.length, 3);
    expect(result.first.id, "0");
    expect(result.first.name, "Flutter 2");
  }));

  test("Should throw ProductOffilineException when not connected to internet",
      (() async {
    final response = Response('', 404);

    when(
      () => client.get(any()),
    ).thenAnswer(
      (_) async => response,
    );

    expect(service.getProducts, throwsA(isA<ProductOffilineException>()));
  }));
}

const responseBody =
    r''' [
        {
            "id": "0",
            "name": "Flutter 2"
        },
        {
            "id": "1",
            "name": "React Native"
        },
        {
            "name": "Ionic",
            "id": "2"
        }
    ]''';
