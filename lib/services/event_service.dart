import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_constants.dart';

class EventService {
  // Fetch all events
  // Future<List<dynamic>> getAllEvents() async {
  //   final response = await http.get(Uri.parse('${ApiConstants.baseUrl}events'));
  //   if (response.statusCode == 200) {
  //     return json.decode(response.body);
  //   } else {
  //     throw Exception("Failed to load events");
  //   }
  // }

  Future<List<dynamic>> getAllEvents() async {
    final response = await http.get(Uri.parse('${ApiConstants.baseUrl}events'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse['data']; // Ambil hanya properti `data`
    } else {
      throw Exception("Failed to load events");
    }
  }

  // Fetch a specific event
  Future<Map<String, dynamic>> getEventById(int eventId) async {
    final response =
        await http.get(Uri.parse('${ApiConstants.baseUrl}events/$eventId'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load event");
    }
  }

  // Create a new event
  Future<void> createEvent(Map<String, dynamic> eventData) async {
    final response = await http.post(
      Uri.parse('${ApiConstants.baseUrl}events'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(eventData),
    );
    if (response.statusCode != 201) {
      throw Exception("Failed to create event");
    }
  }

  // Update an event
  Future<void> updateEvent(int eventId, Map<String, dynamic> eventData) async {
    final response = await http.put(
      Uri.parse('${ApiConstants.baseUrl}events/$eventId'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(eventData),
    );
    if (response.statusCode != 200) {
      throw Exception("Failed to update event");
    }
  }

  // Delete an event
  Future<void> deleteEvent(int eventId) async {
    final response =
        await http.delete(Uri.parse('${ApiConstants.baseUrl}events/$eventId'));
    if (response.statusCode != 200) {
      throw Exception("Failed to delete event");
    }
  }
}
