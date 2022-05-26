import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(73);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff121517),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset(
                "assets/images/masterclas_icon.png",
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 4),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          const TextStyle(fontSize: 20, color: Colors.white)),
                  const Text("Flutterando Masterclass",
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              const Expanded(child: SizedBox()),
              FlutterLogo(size: 40)
            ],
          ),
        ),
      ),
    );
  }
}
