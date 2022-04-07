import 'package:projeto_dashboard/modules/product/domain/entites/brand.dart';
import 'package:projeto_dashboard/modules/product/domain/entites/success.dart';
import 'package:projeto_dashboard/modules/product/infra/datasource/icreate_brand_datasource.dart';

import '../../../../globals/globals.dart' as globals;

class CreateBrandDatasourceImpl extends ICreateBrandDatasource{
  final List<Brand> brands = globals.brands;
  
  @override
  Future<Success> createBrand(Brand brand) async{
    try{
      brands.add(brand);
      return Success();
    }catch(e){
      throw Exception(e);
    }
  }

}