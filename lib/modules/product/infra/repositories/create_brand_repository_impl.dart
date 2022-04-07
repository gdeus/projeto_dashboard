import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/domain/repositories/create_brand_repository.dart';
import 'package:projeto_dashboard/modules/product/infra/datasource/icreate_brand_datasource.dart';

class CreateBrandRepository extends ICreateBrandRespository{
  final ICreateBrandDatasource datasource;

  CreateBrandRepository(this.datasource);
  
  @override
  Future<Either<Exception, Success>> createBrand(Brand brand) async{
    try{
      final result = await datasource.createBrand(brand);
      return Right(result);
    }catch(e){
      return Left(Exception(e));
    }
  }

}