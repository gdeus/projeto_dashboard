import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_dashboard/modules/product/domain/usecases/create_product.dart';

class CreateProductController{
  final usecase = Modular.get<CreateProductImpl>();
}