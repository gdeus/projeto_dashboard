import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/domain/repositories/create_product_repository.dart';

abstract class ICreateProduct{
  Future<Either<Exception, Success>> call(Product product);
}

class CreateProductImpl extends ICreateProduct{
  final ICreateProductRepository iCreateProductRepository;

  CreateProductImpl(this.iCreateProductRepository);

  @override
  Future<Either<Exception, Success>> call(Product product) async {
    return await iCreateProductRepository.createProduct(product);
  }
}