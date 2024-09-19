import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class IpForm extends StatefulWidget {
  final int ipPort;
  final String ipAddress;
  final Function(BuildContext, Map<String, dynamic>) callbackUpdateIp;

  const IpForm(
      {super.key,
      required this.ipAddress,
      required this.ipPort,
      required this.callbackUpdateIp});

  @override
  IpFormState createState() => IpFormState();
}

class IpFormState extends State<IpForm> {
  final _formKey = GlobalKey<FormState>();
  final _ipPortController = TextEditingController();
  final _ipAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _ipPortController.text = widget.ipPort.toString();
    _ipAddressController.text = widget.ipAddress;

    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _ipAddressController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Product IP',
                          hintText: 'Current Product IP: ${widget.ipAddress}'),
                      validator: (value) {
                        return (value != null &&
                                (value.isEmpty || !isIP(value)))
                            ? 'Please enter an address.'
                            : null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _ipPortController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Product IP Port',
                          hintText:
                              'Current Product IP Port: ${widget.ipPort}'),
                      // keyboardType: TextInputType.number,
                      validator: (value) {
                        return (value != null &&
                                (value.isEmpty || !isInt(value)))
                            ? 'Please enter a port.'
                            : null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                              return;
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                            child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              widget.callbackUpdateIp(context, {
                                "ip_port": int.parse(_ipPortController.text),
                                "ip_address": _ipAddressController.text
                              });
                            }
                            Navigator.of(context).pop();
                            return;
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ))
                      ])
                ]))));
  }
}
