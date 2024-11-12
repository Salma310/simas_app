import '../services/profile_service.dart';

class ProfileController {
  final ProfileService _profileService = ProfileService();

  // List untuk menyimpan data pengguna
  List<dynamic> users = [];

 /// Fungsi untuk memperbarui data profil
  Future<bool> updateProfile(Map<String, dynamic> updatedData) async {
    try {
      return await _profileService.updateUser("4", updatedData); // user_id = 4
    } catch (e) {
      print("Error updating profile: $e");
      return false;
    }
  }
  
  /// Fetch semua pengguna dan simpan ke dalam `users`
  Future<void> fetchUsers() async {
    try {
      users = await _profileService.fetchUsers();
    } catch (e) {
      print("Error in fetchUsers: $e");
    }
  }

  /// Buat pengguna baru
  Future<bool> createUser(Map<String, dynamic> userData) async {
    try {
      return await _profileService.createUser(userData);
    } catch (e) {
      print("Error in createUser: $e");
      return false;
    }
  }

  /// Ambil detail pengguna berdasarkan ID
  Future<dynamic> fetchUserDetails(String userId) async {
    try {
      return await _profileService.fetchUserById(userId);
    } catch (e) {
      print("Error in fetchUserDetails: $e");
      return null;
    }
  }

  /// Update data pengguna
  Future<bool> updateUser(String userId, Map<String, dynamic> updatedData) async {
    try {
      return await _profileService.updateUser(userId, updatedData);
    } catch (e) {
      print("Error in updateUser: $e");
      return false;
    }
  }

  /// Hapus pengguna berdasarkan ID
  Future<bool> deleteUser(String userId) async {
    try {
      return await _profileService.deleteUser(userId);
    } catch (e) {
      print("Error in deleteUser: $e");
      return false;
    }
  }
}
