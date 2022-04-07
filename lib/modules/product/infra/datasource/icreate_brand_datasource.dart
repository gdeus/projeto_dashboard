import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';

abstract class ICreateBrandDatasource{
  Future<Success> createBrand(Brand brand);
}