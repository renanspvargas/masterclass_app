import 'package:flutter/material.dart';
import 'package:masterclass_app/screens/activities/design_pattern/desing_pattern_common_model.dart';

class DesingPatternCommonScreen extends StatelessWidget {
  final DesingPatternScreenActivity activity;
  final List<DesignPatternCommonModel> result = [
    DesignPatternCommonModel(id: "1", name: "Teste1"),
    DesignPatternCommonModel(id: "2", name: "Teste2"),
    DesignPatternCommonModel(id: "3", name: "Teste3"),
  ];

  DesingPatternCommonScreen({required this.activity, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: result.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(result[index].name),
              subtitle: Text(result[index].id),
            );
          }),
    );
  }
}

enum DesingPatternScreenActivity { service, repository }
