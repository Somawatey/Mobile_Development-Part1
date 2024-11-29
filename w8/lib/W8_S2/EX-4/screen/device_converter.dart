import 'dart:convert';
import 'package:flutter/material.dart';

enum Device { EURO, RIEL, DONG }

class DeviceConverter extends StatefulWidget {
  const DeviceConverter({super.key});

  @override
  State<DeviceConverter> createState() => _DeviceConverterState();
}

class _DeviceConverterState extends State<DeviceConverter> {
  final TextEditingController dollarController = TextEditingController();
  Device selectedDevice = Device.EURO;
  double convertedAmount = 0.0;

  double exchange(dollarAmount) {
    switch (selectedDevice) {
      case Device.EURO:
        return dollarAmount * 0.95; // dollar to euro
      case Device.RIEL:
        return dollarAmount * 4000; // dollar to riel
      case Device.DONG:
        return dollarAmount * 25000; // dollar to dong
    }
  }


  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.money,
            size: 60,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          const SizedBox(height: 50),
          const Text("Amount in dollars:"),
          const SizedBox(height: 10),
          TextField(
            controller: dollarController,
              decoration: InputDecoration(
                  prefix: const Text('\$ '),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter an amount in dollar',
                  hintStyle: const TextStyle(color: Colors.white)),
              style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          const Text(
            "Device: ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 10),
          DropdownButton<Device>(
            value: selectedDevice,
            dropdownColor: Colors.orangeAccent,
            items: Device.values.map((Device device) {
              return DropdownMenuItem<Device>(
                value: device,
                child: Text(
                  device.name.toUpperCase(),
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: (selected) {
              if (selected != null) {
                setState(() {
                  selectedDevice = selected; // to select the Devicetype from dropdown
                  double dollarAmount = double.tryParse(dollarController.text) ?? 0.0; // convert to double
                  convertedAmount = exchange(dollarAmount); // Update total based on new type
                });
              }
            },
          ),
          const SizedBox(height: 30),
          const Text("Amount in selected device:"),
          const SizedBox(height: 10),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: textDecoration,
              child: Text(
                convertedAmount.toString(),
              )),
        ],
      )),
    );
  }
}
