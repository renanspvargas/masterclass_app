import 'package:masterclass_app/imports.dart';

class CpfValidatorScreen extends StatefulWidget {
  const CpfValidatorScreen({Key? key}) : super(key: key);

  @override
  State<CpfValidatorScreen> createState() => _CpfValidatorScreenState();
}

class _CpfValidatorScreenState extends State<CpfValidatorScreen> {
  late final TextEditingController _controller = TextEditingController();
  final _cpfValitadorStore = CpfValidatorStore();

  Widget get _cpfValidationResult {
    switch (_cpfValitadorStore.state) {
      case CPFValidationStatus.initialState:
        return const Text('');
      case CPFValidationStatus.insuficientNumbers:
        return const Text('Digios 11 numeros!');
      case CPFValidationStatus.invalidChars:
        return const Text('Digite apenas numeros!');
      case CPFValidationStatus.invalidCPF:
        return const Text(
          'Seu CPF está inválido!',
          style: TextStyle(color: Colors.red),
        );
      case CPFValidationStatus.validCPF:
        return const Text(
          'Seu CPF é válido!',
          style: TextStyle(color: Colors.greenAccent),
        );
    }
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
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu CPF',
                  helperText: 'Apenas números',
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () =>
                    _cpfValitadorStore.validateCPF(_controller.text),
                icon: const Icon(Icons.check),
                label: const Text("Clique para verificar"),
              ),
              const SizedBox(height: 40),
              const Text('Resultado:'),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 200,
                child: Center(
                  child: AnimatedBuilder(
                    animation: _cpfValitadorStore,
                    builder: (context, child) => _cpfValidationResult,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
