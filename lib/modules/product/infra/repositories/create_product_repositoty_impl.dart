
import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/product.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/domain/repositories/create_product_repository.dart';
import 'package:projeto_dashboard/modules/product/infra/datasource/icreate_product_datasource.dart';

class CreateProductRespositoryImpl extends ICreateProductRepository{
  final ICreateProductDatasource datasource;

  CreateProductRespositoryImpl(this.datasource);

  @override
  Future<Either<Exception, Success>> createProduct(Product produtc) async{
    try{
      final result = await datasource.createProduct(produtc);
      return Right(result);
    }catch(e){
      return Left(Exception(e));
    }
  }
  

}