import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_dashboard/modules/product/view/create_brand_view.dart';
import 'package:projeto_dashboard/modules/product/view/create_product_view.dart';

import 'domain/entites/product.dart';
import 'domain/usecases/create_brand.dart';
import 'domain/usecases/create_product.dart';
import 'external/datasources/create_brand_datasource_impl.dart';
import 'external/datasources/create_product_datasource_impl.dart';
import 'infra/repositories/create_brand_repository_impl.dart';
import 'infra/repositories/create_product_repositoty_impl.dart';

class ProductModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => <Product>[]),
    Bind.lazySingleton((i) => CreateProductRespositoryImpl(i())),
    Bind.lazySingleton((i) => CreateProductDatasourceImpl()),
    Bind.lazySingleton((i) => CreateProductImpl(i())),
    Bind.lazySingleton((i) => CreateBrandImpl(i())),
    Bind.lazySingleton((i) => CreateBrandRepository(i())),
    Bind.lazySingleton((i) => CreateBrandDatasourceImpl()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => CreateProductView()),
    ChildRoute('/brand', child: (context, args) => CreateBrandScreen()),
  ];
}