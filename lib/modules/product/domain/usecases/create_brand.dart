import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/domain/repositories/create_brand_repository.dart';

abstract class ICreateBrand{
  Future<Either<Exception, Success>> call(Brand brand);
}

class CreateBrandImpl extends ICreateBrand{
  final ICreateBrandRespository repository;

  CreateBrandImpl(this.repository);

  @override
  Future<Either<Exception, Success>> call(Brand brand) async{
    return await repository.createBrand(brand);
  }

} 