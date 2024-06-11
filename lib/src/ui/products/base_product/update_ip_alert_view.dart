import 'package:flutter/material.dart';

class IpUpdateAlertView extends StatelessWidget {
  final String ipAddress;
  final int ipPort;
  final Function(String, int) callbackUpdateIp;

  const IpUpdateAlertView(
      {super.key,
      required this.ipAddress,
      required this.ipPort,
      required this.callbackUpdateIp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Product IP',
                        hintText: 'Current Product IP: $ipAddress'),
                    onSubmitted: (value) {
                      // add validator for IP
                      callbackUpdateIp(value, ipPort);
                    },
                  ),
                ),
                const SizedBox(height: 10, width: 1000),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Product IP Port',
                        hintText: 'Current Product IP Port: $ipPort'),
                    keyboardType: TextInputType.number,
                    onSubmitted: (value) {
                      // add validator for port
                      callbackUpdateIp(ipAddress, int.parse(value));
                    },
                  ),
                ),
              ],
            )));
  }
}
