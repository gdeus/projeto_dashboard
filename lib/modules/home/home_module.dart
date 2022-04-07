import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_dashboard/modules/home/presenter/home.dart';
class HomeModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => HomeScreen()),
  ];
}