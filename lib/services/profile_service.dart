import 'package:dio/dio.dart';
import 'api_constants.dart';

class ProfileService {
  final Dio _dio = Dio();

  /// Fungsi untuk login
  Future<Map<String, dynamic>> loginUser(String credential, String password) async {
    try {
      final response = await _dio.post(ApiConstants.login, data: {
        "credential": credential, // Bisa username atau email
        "password": password,
      });
      return response.data;
    } catch (e) {
      print("Login error: $e");
      return {"error": "Login failed"};
    }
  }

  /// Fungsi untuk mendapatkan data role
  Future<List<dynamic>> fetchRoles() async {
    try {
      final response = await _dio.get(ApiConstants.roles);
      return response.data;
    } catch (e) {
      print("Error fetching roles: $e");
      return [];
    }
  }

  /// Fungsi untuk memperbarui data pengguna
  Future<bool> updateUser(String userId, Map<String, dynamic> updatedData) async {
    try {
      final response = await _dio.post("${ApiConstants.baseUrl}profiles", data: updatedData);
      return response.statusCode == 200; // Pastikan berhasil dengan status 200
    } catch (e) {
      print("Error updating user: $e");
      return false;
    }
  }

  /// Fetch all users
  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await _dio.get("${ApiConstants.baseUrl}users");
      return response.data;
    } catch (e) {
      print("Error fetching users: $e");
      return [];
    }
  }

  /// Create a new user
  Future<bool> createUser(Map<String, dynamic> userData) async {
    try {
      await _dio.post("${ApiConstants.baseUrl}users", data: userData);
      return true;
    } catch (e) {
      print("Error creating user: $e");
      return false;
    }
  }

  /// Fetch details of a single user
  Future<dynamic> fetchUserById(String userId) async {
    try {
      final response = await _dio.get("${ApiConstants.baseUrl}users/$userId");
      return response.data;
    } catch (e) {
      print("Error fetching user details: $e");
      return null;
    }
  }

  /// Update user data
  // Future<bool> updateUser(String userId, Map<String, dynamic> updatedData) async {
  //   try {
  //     await _dio.put("${ApiConstants.baseUrl}users/$userId", data: updatedData);
  //     return true;
  //   } catch (e) {
  //     print("Error updating user: $e");
  //     return false;
  //   }
  // }

  /// Delete a user
  Future<bool> deleteUser(String userId) async {
    try {
      await _dio.delete("${ApiConstants.baseUrl}users/$userId");
      return true;
    } catch (e) {
      print("Error deleting user: $e");
      return false;
    }
  }
}
