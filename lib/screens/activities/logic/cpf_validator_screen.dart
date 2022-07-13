import 'package:flutter/services.dart';
import 'package:masterclass_app/imports.dart';

class CpfValidator extends StatefulWidget {
  CpfValidator({Key? key}) : super(key: key);

  @override
  State<CpfValidator> createState() => _CpfValidatorState();
}

class _CpfValidatorState extends State<CpfValidator> {
  late final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextField(
                controller: _controller,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'([0-9]{3})\.([0-9]{3})\.([0-9]{3})-([0-9]{2})'),
                  ),
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu CPF',
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () => print(_controller.text),
                icon: const Icon(Icons.check),
                label: const Text("Clique para verificar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
