import 'dart:io';
import 'dart:math';
import 'package:grpc/grpc.dart';
import 'package:dart_grpc_server/dart_grpc_server.dart';

class Client {
  ClientChannel? channel;
  GroceriesServiceClient? stub;
  var response;
  bool executionInProgress = true;

  Future<void> main() async {
    channel = ClientChannel('localhost',
        port: 50000,
        options: // No credentials in this example
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    stub = GroceriesServiceClient(channel!,
        options: CallOptions(timeout: Duration(seconds: 30)));

    while(executionInProgress){
      try {
      print('---- Welcome to the dart store API ---');
      print('   ---- what do you want to do? ---');
      print('👉 1: View all products');
      print('👉 2: Add new product');
      print('👉 3: Edit product');
      print('👉 4: Get product by id');
      print('👉 5: Delete product \n');
      print('👉 6: View all categories');
      print('👉 7: Add new category');
      print('👉 8: Edit category');
      print('👉 9: Get category');
      print('👉 10: Get all products from given category');
      print('👉 11: Delete category \n');

      var option = int.parse(stdin.readLineSync()!);

      switch (option) {
        case 1:
            items.clear();
            response = await stub!.getAllItems(Empty());
          print(' --- Store products --- ');
          response.items.forEach((item) {
            print('✅: ${item.name} (id: ${item.id} | categoryId: ${item.categoryId})');
          });
          break;
        case 2:
          print('not implemented yet');

          break;

        case 3:
          print('not implemented yet');

          break;
        case 4:
          print('not implemented yet');

          break;
        case 5:
          print('not implemented yet');

          break;
        case 6:
          response = await stub!.getAllCategories(Empty());
          print(' --- Store product categories --- ');
          response.categories.forEach((category) {
            print('👉: ${category.name} (id: ${category.id})');
          });

          break;
        case 7:
          print('Enter category name');
          var category = 
          Category()
          ..id = Random(999).nextInt(9999)
          ..name =
          stdin.readLineSync()!;
          response = await stub!.createCategory(category);
            print('category ${category.name} (id: ${category.id}) created 🔥');
          break;
        case 8:
          print('not implemented yet');

          break;
        case 9:
          print('Enter category name');
          var name = stdin.readLineSync()!;
          var category = 
          Category()
          ..name = name
          ;
          response = await stub!.getCategory(category);
          if(response.id != 0){
            print('✅ category found | name ${response.name} | id ${response.id}');
          }else{
            print('🔴 category not found | no category matches the name $name');
          }

          break;
        case 10:
          print('not implemented yet');

          break;
        case 11:
          print('not implemented yet');

          break;
        default:
          print('invalid option 🥲');
      }
    } catch (e) {
      print(e);
    }
    print('Do you wish to exit the store? (Y/n)');
    var result = stdin.readLineSync() ?? 'y';
    executionInProgress = result.toLowerCase() != 'y';
    }

    await channel!.shutdown();
  }
}

main() {
  var client = Client();
  client.main();
}
