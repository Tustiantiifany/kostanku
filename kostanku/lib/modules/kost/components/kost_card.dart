// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kostanku/constants/pallete.dart';

class KostCard extends StatelessWidget {
  String kostName;
  String ownerName;
  String phoneNumber;
  String address;
  KostCard({
    Key? key,
    required this.kostName,
    required this.ownerName,
    required this.phoneNumber,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: _buildKostName(),
            ),
            SizedBox(height: 16),
            _buildKostInformation(),
            SizedBox(height: 12),
            _buildLocationButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildKostName() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 32),
      decoration: BoxDecoration(
        color: Pallete.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        kostName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildKostInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pemilik           : $ownerName',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 4),
        Text(
          'Nomor HP     : $phoneNumber',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 4),
        Text(
          'Alamat          : $address',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildLocationButton() {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Lokasi',
            style: TextStyle(fontSize: 12),
          ),
          Icon(
            Icons.location_on,
            color: Pallete.error,
            size: 20,
          ),
        ],
      ),
    );
  }
}
