import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cruise_booking_viewmodel.dart';

class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CruiseBookingViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vm.destination.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 8),
                Text(vm.destination.location, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.star, color: Colors.amber[500]),
            onPressed: vm.incrementStar,
          ),
          Text('${vm.starCount}'),
        ],
      ),
    );
  }
}