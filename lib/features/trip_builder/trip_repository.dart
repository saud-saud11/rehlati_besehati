import '../../models/trip.dart';
import '../../core/network/api_client.dart';

class TripRepository {
  final ApiClient _apiClient;

  TripRepository(this._apiClient);

  Future<Trip> createTrip(Trip trip) async {
    // In a real scenario with Supabase:
    // final response = await _apiClient.post('/rest/v1/trips', data: trip.toJson());
    // return Trip.fromJson(response.data);
    
    // Mock return for UI Phase
    return trip.copyWith(id: 'mock-trip-id-123', status: 'planning');
  }

  Future<Trip?> getTrip(String id) async {
    // In a real scenario:
    // final response = await _apiClient.get('/rest/v1/trips?id=eq.$id');
    // return Trip.fromJson(response.data[0]);
    return null;
  }
}
