
import 'package:postgres/postgres.dart';

var databaseConnection = PostgreSQLConnection( "91.225.104.133", 5432, 'appetit', queryTimeoutInSeconds: 3600, timeoutInSeconds: 3600, username: 'appetit', password: 'QbOwY3v1');

initDatabaseConnection() async {
  await databaseConnection.open().then((value) {
  print("Database Connected!");
  });
}

