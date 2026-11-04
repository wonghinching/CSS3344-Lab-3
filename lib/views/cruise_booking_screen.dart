import 'package:flutter/material.dart';
import '../widgets/header_image_widget.dart';
import '../widgets/title_section_widget.dart';
import '../widgets/action_bar_widget.dart';
import '../widgets/description_widget.dart';
import '../widgets/booking_controls_widget.dart';

class CruiseBookingScreen extends StatelessWidget {
  const CruiseBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sibu River Cruise & Heritage')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? ListView(
            children: const [
              HeaderImageWidget(),
              TitleSectionWidget(),
              ActionBarWidget(),
              DescriptionWidget(),
              Divider(),
              BookingControlsWidget(),
            ],
          )
              : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(child: HeaderImageWidget()),
              Expanded(
                child: ListView(
                  children: const [
                    TitleSectionWidget(),
                    ActionBarWidget(),
                    DescriptionWidget(),
                    Divider(),
                    BookingControlsWidget(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}