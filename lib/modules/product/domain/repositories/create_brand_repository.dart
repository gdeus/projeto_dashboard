import 'package:dartz/dartz.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';

abstract class ICreateBrandRespository{
  Future<Either<Exception, Success>> createBrand(Brand brand);
}