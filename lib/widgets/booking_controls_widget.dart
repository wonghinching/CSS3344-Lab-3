import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cruise_booking_viewmodel.dart';

class BookingControlsWidget extends StatelessWidget {
  const BookingControlsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CruiseBookingViewModel>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Trip Preferences', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Cruise Date:'),
            trailing: TextButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: vm.selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                );
                if (picked != null) vm.updateDate(picked);
              },
              child: Text('${vm.selectedDate.day}/${vm.selectedDate.month}/${vm.selectedDate.year}', style: const TextStyle(fontSize: 16)),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Transport Mode:'),
            trailing: DropdownButton<String>(
              value: vm.selectedPackage,
              underline: const SizedBox(),
              items: vm.packages.map((String value) => DropdownMenuItem<String>(value: value, child: Text(value))).toList(),
              onChanged: (newValue) {
                if (newValue != null) vm.updatePackage(newValue);
              },
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Dark Mode Theme'),
            value: vm.isDarkMode,
            onChanged: vm.toggleTheme,
          ),
        ],
      ),
    );
  }
}