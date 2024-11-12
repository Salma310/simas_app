import '../services/profile_service.dart';

class LoginController {
  final ProfileService _profileService = ProfileService();

  /// Fungsi login user
  Future<Map<String, dynamic>> login(String credential, String password) async {
    final loginResponse = await _profileService.loginUser(credential, password);
    if (loginResponse.containsKey("error")) {
      return {"success": false, "message": "Login failed"};
    }

    // Jika login berhasil
    return {
      "success": true,
      "data": loginResponse,
    };
  }

  /// Fungsi otorisasi berdasarkan role
  String authorizeUser(int roleId) {
    switch (roleId) {
      case 2: // Role Pimpinan
        return "Pimpinan";
      case 3: // Role Dosen
        return "Dosen";
      default:
        return "Unauthorized";
    }
  }
}
