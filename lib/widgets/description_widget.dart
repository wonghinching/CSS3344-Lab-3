import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cruise_booking_viewmodel.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CruiseBookingViewModel>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(vm.destination.description, softWrap: true),
    );
  }
}