import 'package:flutter/material.dart';
import 'package:zomato/BLoC/bloc_provider.dart';
import 'package:zomato/BLoC/location_bloc.dart';
import 'package:zomato/UI/main_screen.dart';

void main() => runApp(RestaurantFinder());

class RestaurantFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: MaterialApp(
        title: 'Restaurant Finder',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MainScreen(),
      ),
    );
  }
}
