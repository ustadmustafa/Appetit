import 'Connection.dart';

void KullaniciEkle(String username,String email,String phone,String password) async{
  await initDatabaseConnection();
  
  await databaseConnection.execute('INSERT INTO "user" (name,username,profilephoto, email,phone, password,location) VALUES (@name,@username,@profilephoto,@email,@phone,@password,@location)',
    substitutionValues: {'name': ' ' ,'username' : username,'profilephoto': ' ' ,'email': email,'phone':phone, 'password': password, 'location': ' '});
  await databaseConnection.close();
}