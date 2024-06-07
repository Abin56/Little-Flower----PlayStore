import 'package:googleapis_auth/auth_io.dart';

class AccessTokenFirebase {
  static String firebaseMessagingScope =
      'https://www.googleapis.com/auth/firebase.messaging';

  /// Retrieves the access token for Firebase Messaging.
  ///
  /// This function uses the service account credentials to authenticate with
  /// the Google API and obtain an access token for Firebase Messaging. The
  /// obtained access token is then returned.
  ///
  /// Returns:
  ///   A `Future` that resolves to a `String` representing the access token.
  ///
  /// Throws:
  ///   - `ClientException`: If there was an error while authenticating with
  ///     the Google API.
  ///   - `SocketException`: If there was a network-related error while
  ///     retrieving the access token.
  ///   - `FormatException`: If the response from the Google API was not in the
  ///     expected format.

  Future<String> getAccessToken() async {
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson({
          "type": "service_account",
          "project_id": "little-flower-bb60b",
          "private_key_id": "bfaedc1858d54cc5c4eec561359b76faa2c8845a",
          "private_key":
              "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCiOFZr9b3Hm5Hx\nkYczsZiIB39BEK74YJNv1llLxPbYPy8kzTKtH700SDUUHesydO6azrXWGDus0T9Q\npWkBk4Ie5bbHTP4oVIRzmYM8uQrh5fBJHMdwI49HsnMBnNFFl4gwS3NzPpZT0/QB\nvRyG0/8mHO5zQv2LI+SY48zPM1XqxkWwZmLrAiY6qCp1bWX/OOLiVKNdhjcoIUdc\nPrpV5qLeiN3/j8Zsb5X9YqW2wc7VPb5yzHmQ8tSme5FzFhv8n4HomhFWPk6u+hJH\nb0IU5jE3Y+6HiaUGanl39a2BUKDmPvFvlc7WUuVLyeZ2N1wDvFZtd50n+ypAhqzB\n2XXpvtLfAgMBAAECggEARLdruHDREwiOAo/8f0PYUqsmVzgLflBetC3PBr8pN4JQ\nZJz9vgNnYQnDXkGsO2P4HSC6OzZptPOwh+eBuzaylIcHbZZqRUhEETnys1rJRtbh\n+f6UZybRD3SCriixJ3MgsCCOB7/36wuqXcAvoNeVyh3QTogOog2yzKcWv6DF4Nyu\nvTkHQfS+NbG8qzpweWvA6uVUYH5urOenVQccqaNFGqxt5JsJ3kDV9Det39pW8bOu\n7Pg/SqyhtqQmJZ99umFZwCicF7+/tLYifVtCiRfJRDC+jWK/9d1QtIupGWbTNZYl\nglNpeu2cyqNjvWhHq6KXLSU7VgthITMcUNA1AkGWfQKBgQDRAZthVu7N1Gb3FY0s\nXGKLSSOyUJPuCBqlNpICUUf5GkwXuqG0VTmduz7CGphwmlC+tL4Qe30SNljhlt7V\nQSL4/UIsxhDuBvBhEqQV+yS4JBs2anw92IqX5N0QNwXNYiX5rTZdATSyt72iVnhp\nMXYjICr1Ri29C+93WGhPagwBIwKBgQDGsbfj77VqIM8M2QoduWQGo0EKJyHijWSx\nsog6XDujCkFVd9Zc2IysDopktGqhPLRPKjnzmDq7/o6GJQpqYP8ArqUM9ElJW+AJ\nivE64ReE6BdFk+1jQ38GA6Yz/+iVwagF7s1iT0qeoeWULnaLw4Wte75vKvjok+7i\ntwyS/S2JFQKBgQCJR4rtZpI387kltawiZRP89K9TogVoJT6LIcrJZuXlQlaUh2tK\n7WeIqMJR7/IMk+9RM5pbbSD7Y2MB2XzHiZ8U+BQNIJNiJICi4gGQxoKZyG1vUoYE\ngUSW/CYPTnSrMDpNQm4grHgWowUVqcIxJeG4tJpCvDOypjJFq3XoI3l7DQKBgGPW\nNJIhhkRXS/ImtECPQMVdDncthocxiKEJFg5M/eJEauOpHVr1rGlfvQYw6UsvF2KX\n0xqlKQ4BMFgTEJK3Pip3lpNVw+VKdt4UpHVzWL/9ZoQdejBgX9kDyGVkdteYwPaK\nMUTulo3yx0qXthUwH2E2Rk/RhdRHUMc2Nuk8sb6pAoGAD1xmTQEp3Arp616tbzxy\nVbxDKJ3QFu+gXSdgjdrnHV7m53kCnoSlWm4ln2K9MW87Xi87IoAIZnw7MgSS1DCF\nBYlUwWN7xYTopQRwaUerf0s8PRO3WHC5svyJUuPIC0U/IyY1KV7rm92FUnMK/ctN\n44gnJZAYy6bvfU8FYjPwf+c=\n-----END PRIVATE KEY-----\n",
          "client_email":
              "firebase-adminsdk-i5696@little-flower-bb60b.iam.gserviceaccount.com",
          "client_id": "110875256427826822952",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url":
              "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url":
              "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-i5696%40little-flower-bb60b.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        }),
        [firebaseMessagingScope]);
    final String accessToken = client.credentials.accessToken.data;
    return accessToken;
  }
}
