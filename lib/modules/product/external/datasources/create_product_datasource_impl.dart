import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/infra/datasource/icreate_product_datasource.dart';

import '../../../../globals/globals.dart' as globals;

class CreateProductDatasourceImpl extends ICreateProductDatasource{
  final List<Product> products = globals.products;

  @override
  Future<Success> createProduct(Product product) async{
    try{
      products.add(product);
      return Success();
    }catch(e){
      throw Exception();
    }
  }
}