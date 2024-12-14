import 'package:flutter/material.dart';
import 'package:hotel_management_app/model/hotels.dart';

class HotelProvider extends ChangeNotifier {
  List<Hotel> _hotels = [];

  addHotels({required List<Hotel> hotels}) {
    _hotels = hotels;
    notifyListeners();
  }

  List<Hotel> get allHotelData => _hotels;
}
