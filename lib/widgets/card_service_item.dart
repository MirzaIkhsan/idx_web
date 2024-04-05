import 'package:flutter/material.dart';
import 'package:idx_web/models/service_item_model.dart';

class CardServiceItem extends StatelessWidget {
  const CardServiceItem({
    super.key,
    required this.model,
  });

  final ServiceItemModel model;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.image, size: 64),
              const SizedBox(height: 4),
              Text(
                model.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                model.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const SizedBox(height: 8),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: Text(
                    'Learn More >',
                    style: TextStyle(
                      color: model.buttonColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}