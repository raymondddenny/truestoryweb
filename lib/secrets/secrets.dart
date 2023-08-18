import 'package:secure_dotenv/secure_dotenv.dart';

part 'secrets.g.dart';

@DotEnvGen(
  filename: '.env',
  fieldRename: FieldRename.screamingSnake,
)
abstract class Env {
  const factory Env(String encryptionKey, String iv) = _$Env;

  const Env._();

  @FieldKey(name: 'FIREBASE_API_KEY')
  String get firebaseApiKey;
}
