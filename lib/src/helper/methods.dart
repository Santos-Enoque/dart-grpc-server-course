
import 'package:dart_grpc_server/src/db/data.dart';
import 'package:dart_grpc_server/src/generated/groceries.pb.dart';

class HelperMethods {

  Category getCategoryFromMap(Map category) {
    var _idTag = 1;
    var _nameTag = 2;
    int _id = category['id'];
    String _name = category['name'];
    return Category.fromJson('{"$_idTag": $_id, "$_nameTag": "$_name"}');
  }

  Item getItemFromMap(Map item) {
    var _idTag = 1;
    var _nameTag = 2;
    var _categoryTag = 3;
    int _id = item['id'];
    String _name = item['name'];
    int _categoryId = item['categoryId'];
    return Item.fromJson(
        '{"$_idTag": $_id, "$_nameTag": "$_name", "$_categoryTag": $_categoryId}');
  }

}

final helper = HelperMethods();