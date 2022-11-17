
import 'dart:developer';
import 'package:http/http.dart ' as http;

class APIService{
 
  
  Future getApi() async{
    try{
      var url=Uri.parse('http://34.226.226.234/index.php?route=app/customer/login');
      var response=await http.get(url);
      print(response);


    }catch(e){

    }
  }
}

