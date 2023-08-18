// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secrets.dart';

// **************************************************************************
// SecureDotEnvAnnotationGenerator
// **************************************************************************

class _$Env extends Env {
  const _$Env(this._encryptionKey, this._iv) : super._();

  final String _encryptionKey;
  final String _iv;
  static final Uint8List _encryptedValues = Uint8List.fromList([
    218,
    91,
    44,
    85,
    26,
    99,
    1,
    237,
    19,
    5,
    187,
    58,
    72,
    24,
    184,
    151,
    153,
    172,
    9,
    89,
    217,
    127,
    88,
    132,
    73,
    125,
    3,
    75,
    41,
    205,
    57,
    227,
    224,
    35,
    177,
    164,
    11,
    235,
    133,
    47,
    88,
    81,
    136,
    158,
    120,
    88,
    198,
    234,
    167,
    53,
    141,
    96,
    16,
    96,
    41,
    187,
    95,
    89,
    138,
    160,
    18,
    221,
    173,
    187,
    190,
    22,
    62,
    150,
    73,
    142,
    61,
    155,
    129,
    160,
    103,
    65,
    156,
    33,
    144,
    130,
    188,
    40,
    156,
    247,
    193,
    163,
    225,
    149,
    56,
    2,
    145,
    145,
    133,
    50,
    224,
    93
  ]);
  @override
  String get firebaseApiKey => _get('FIREBASE_API_KEY');

  T _get<T>(
    String key, {
    T Function(String)? fromString,
  }) {
    T _parseValue(String strValue) {
      if (T == String) {
        return (strValue) as T;
      } else if (T == int) {
        return int.parse(strValue) as T;
      } else if (T == double) {
        return double.parse(strValue) as T;
      } else if (T == bool) {
        return (strValue.toLowerCase() == 'true') as T;
      } else if (T == Enum || fromString != null) {
        if (fromString == null) {
          throw Exception('fromString is required for Enum');
        }

        return fromString(strValue.split('.').last);
      }

      throw Exception('Type ${T.toString()} not supported');
    }

    final encryptionKey = base64.decode(_encryptionKey.trim());
    final iv = base64.decode(_iv.trim());
    final decrypted =
        AESCBCEncryper.aesCbcDecrypt(encryptionKey, iv, _encryptedValues);
    final jsonMap = json.decode(decrypted) as Map<String, dynamic>;
    if (!jsonMap.containsKey(key)) {
      throw Exception('Key $key not found in .env file');
    }

    final encryptedValue = jsonMap[key] as String;
    final decryptedValue = AESCBCEncryper.aesCbcDecrypt(
      encryptionKey,
      iv,
      base64.decode(encryptedValue),
    );
    return _parseValue(decryptedValue);
  }
}
