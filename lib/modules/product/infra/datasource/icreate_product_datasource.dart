import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';

abstract class ICreateProductDatasource{
  Future<Success> createProduct(Product product);
}