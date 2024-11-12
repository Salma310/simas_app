import 'package:flutter/material.dart';
import '../services/event_service.dart';

class EventController extends ChangeNotifier {
  final EventService _eventService = EventService();
  List<dynamic> _events = [];

  List<dynamic> get events => _events;

  Future<void> fetchEvents() async {
    try {
      _events = await _eventService.getAllEvents();
      notifyListeners();
    } catch (e) {
      print("Error fetching events: $e");
    }

    // Add new event
    Future<void> addEvent(Map<String, dynamic> eventData) async {
      try {
        await _eventService.createEvent(eventData);
        await fetchEvents();
      } catch (e) {
        print("Error adding event: $e");
      }
    }
  }

  // Update an event
  Future<void> updateEvent(int eventId, Map<String, dynamic> eventData) async {
    try {
      await _eventService.updateEvent(eventId, eventData);
      await fetchEvents();
    } catch (e) {
      print("Error updating event: $e");
    }
  }

  // Delete an event
  Future<void> deleteEvent(int eventId) async {
    try {
      await _eventService.deleteEvent(eventId);
      await fetchEvents();
    } catch (e) {
      print("Error deleting event: $e");
    }
  }
}
