import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';

abstract class ICreateProductRepository{
  Future<Either<Exception, Success>> createProduct(Product produtc);
}