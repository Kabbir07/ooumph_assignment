class LoginRepo {
  final String loginMutation = """
  mutation Login(\$email: String!, \$password: String!) {
    login(email: \$email, password: \$password) {
      token
      user {
        id
        name
      }
    }
  }
  """;

  Future<void> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
