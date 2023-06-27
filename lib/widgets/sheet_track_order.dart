import 'package:flutter/material.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/track_order.dart';

class SheetPopUp extends StatelessWidget {
  const SheetPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(32),
        topLeft: Radius.circular(32),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.f6Color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Track Order',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 12),
              const TrackOrder(),
              const TrackOrder(),
              const TrackOrder(),
              const TrackOrder(),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ButtonLarge2(
                      text: 'Contact Seller',
                      onPressed: () {
                        // Logika yang ingin Anda jalankan saat tombol ditekan
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
