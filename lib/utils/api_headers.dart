class ApiHeaders {
  static Map<String, String> defaultHeaders() => {
    'Content-Type': 'application/json',
  };

  static Map<String, String> authHeaders(String token) => {
    'Authorization': 'Bearer $token',
    'Content-Type': 'application/json',
  };

  static Map<String, String> authOnlyHeaders(String token) => {
    'Authorization': 'Bearer $token',
  };
}