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
          "project_id": "little-flower-mananthavady-j-5",
          "private_key_id": "2daf8d9e16eef74c1bb0db3a8652e928e3bdc323",
          "private_key":
              "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCqeZmGx3QAIFt+\nr6cxxU1+bp1lZh9rVUgU5mMKpFjMaL1001nIJHF6soTGD6RIWwB6BnvvcNRZ6cAw\noABMOEevDUGLC06qOvjc2iWo8tp/IbOhrOvu0U9QnJFEcd7M730lai0raZkQDFnq\n20Moboai+rJeOfdFJApgt6Bhi+eYFH+zdyZIf5rBYU6/mbG419ujuD+cdCfs4zIg\npYdLqmk2IQKvsRBs+mmhbeOTh0WWMaLIzOlEzuMm6oKFiKAfDXNlEJ/Yv7beUysd\nIni3P7e4v5mego9j0GIeR7iUulRJa3nMUWhMmdFfjGCX6iw0UTa8XShLFsT/aReV\nYHgR1qpzAgMBAAECggEAS4z1jeZSEgZFFkmZcvTKichTCA+wx/w1JFIQPbSlR/35\nTM+oAAuqoSKBtldTSt/Nv8ak4XJjIe/2xXX7e8wLdNiOniUmOUpGZXZmb1AlpmcU\nuYetzhrEKGki9i7y+2b90vmRyCYV+CdJKE0BH+eP0qYBK8JLxEAbO07WDLUYr+xY\nmCIArHhm8/53NyGejColMqudc57pXr8D9b2qIj6fUVCdxyLDaci2PEol8T+8kqlf\nt7C7cQ4ustRqQHw/N7ph3HW3TYCCkwAzjB0N3xWF+j+arrgOXQzxVvspoXGhzJQq\nJrcfwquEuZ8F9Ax0SjD+H+zHtp0rlrNrNnvm+fCyyQKBgQDTRzxoUtCUmhhvBlXA\nVqKylpiTzHn1am7pHplHdcLQ7UXr4VkO++9hyJDjISyHBtTtNjqUXa0FpwYgUNTM\nfD7OVISi17hzp8OdGYE0uah3ZD0QHezRpkEVesT3NalstbBb19yH83iw+ywaxhSL\nUMuyW53+LxLXuziRwgk674T3KQKBgQDOj1AfSyqLgtiJcAWifalpBDtiySyQueHp\npFpwo8tiiXjnbsFCIKdBW94h3tqezul4jD5ZoQqx+uQvQK5GxjZgblGmbi3PZ7N9\nPz9S6V0NLyM30u2d2+vnv83K+k0mpg0gG0nzvIuOp57p4kup1E92SzS9Cm/M4nfN\nhj5AVJ6UOwKBgCymT1PUvJPLBQLhmdmt9XA8dz405klBFvNZLhd2AZfZrP8ufn22\nLF7D3irB5gEbJoCDB1o3ectKAvdtXathTnyYS/eGE0sN1z8qFq4n1jx1CJqRWGzt\n7680ZM/BnW6F7yFZuxdYEteEHUwDNHBEwOeOiRMgq6C/xjK3iO/VkooRAoGBAKz5\nZE4gYutbUjudfIp7Er/nlFeAQfqcPquqPzYuY+YLWxzrKZlXwNhBtz3D4m20tdyG\nDLx/2HX8tNNBJfAMkoKkP2nQwDn8DFmo+j1TQOIGhEZ+Mw/Ll7yFaS899heUXE9z\nqrUaQf/fLHuNTnFUYoqcJfjcYY1AZLTOYxj6A6X7AoGANG6c0f3k9jJeMZPooNiz\nrHEAVKX9G+m2apEwSFbncThOkJtrcGPpdY1N8143hW8J75zEXUJzDcQ9VbMMrOuz\nGhr52BOKQnUsp1mVum1RO+KyzP+LmNXXS26pZ2/bEEi1Bn+cS7sEKx3Jcn3lmkBb\nzWvCgDQyhrxWhBCe4ChNWg4=\n-----END PRIVATE KEY-----\n",
          "client_email":
              "firebase-adminsdk-eg8cy@little-flower-mananthavady-j-5.iam.gserviceaccount.com",
          "client_id": "110091070939303990778",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url":
              "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url":
              "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-eg8cy%40little-flower-mananthavady-j-5.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        }),
        [firebaseMessagingScope]);
    final String accessToken = client.credentials.accessToken.data;
    return accessToken;
  }
}
