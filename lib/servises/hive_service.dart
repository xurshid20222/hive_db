
import 'package:hive_flutter/hive_flutter.dart';

import '../model/user_model.dart';

class HiveDB {

  Future<void> storeUser(User user)async{
    var box = await  Hive.openBox('my_hive_db');
    box.put('user', user.toJson());
  }

  Future<User> loadUser() async {
    var box = await  Hive.openBox('my_hive_db');
    var user = User.fromJson(box.get('user'));
    return user;
  }

  Future<void> removeUser() async{
    var box = await  Hive.openBox('my_hive_db');
    box.delete('user');
  }
  
}

class HiveServices{
  Future<void> storeUser(String name, String password)async{
    var box = await  Hive.openBox('my_hive_db');
    box.put('userName', name);
    box.put('userPassword', password);


    var usern = box.get('userName', defaultValue: 'Haa');
    var userp = box.get('userPassword', defaultValue: 'Haa');
    return usern;
  }
}