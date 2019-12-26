
import 'dart:async';

import 'package:zomato/BLoC/bloc.dart';

import '../DataLayer/location.dart';


class LocationBloc implements Bloc {

  Location _location;
  
  Location get location => _location;
  
  final _locationController = StreamController<Location>();
  
  Stream<Location> get locationController => _locationController.stream;

  
  void selectLocation (Location location){
    _location = location;
    _locationController.sink.add(location);
  }
 
  @override
  void dispose() {
    _locationController.close();
  }

}