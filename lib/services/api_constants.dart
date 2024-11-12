class ApiConstants {
  // Base URL untuk semua API
  static const String baseUrl = "http://192.168.69.89:8000/api/";

  // Endpoint untuk login dan role
  static const String login = "${baseUrl}login";
  static const String roles = "${baseUrl}roles";

  // Endpoint untuk modul Profile
  static const String getUsers = "${baseUrl}users";
  static const String createUser = "${baseUrl}users";
  static const String getUserDetails =
      "${baseUrl}users/"; // Tambahkan ID user saat digunakan
  static const String updateUser =
      "${baseUrl}users/"; // Tambahkan ID user saat digunakan
  static const String deleteUser =
      "${baseUrl}users/"; // Tambahkan ID user saat digunakan
}
