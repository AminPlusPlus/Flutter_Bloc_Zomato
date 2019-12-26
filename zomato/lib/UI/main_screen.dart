import 'package:flutter/material.dart';
import 'package:zomato/BLoC/bloc_provider.dart';
import 'package:zomato/BLoC/location_bloc.dart';
import 'package:zomato/UI/location_screen.dart';

import '../DataLayer/location.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
      stream: BlocProvider.of<LocationBloc>(context).locationController,
      builder: (context, snapshot) {
        final location = snapshot.data;

        if (location != null) {
          return LocationScreen();
        }
        return Container();
      },
    );
  }
}
