/*
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class MyBLE extends StatefulWidget {
  const MyBLE({Key? key}) : super(key: key); // Added named 'key' parameter

  @override
  _MyBLE createState() => _MyBLE();
}

class _MyBLE extends State<MyBLE> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  BluetoothDevice? connectedDevice; // Added nullable type
  BluetoothCharacteristic? characteristic; // Added nullable type

  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluetooth LE Chat'), // Added 'const' keyword
      ),
      body: Column(
        children: [
          _buildDeviceList(),
          _buildChatArea(),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildDeviceList() {
    return StreamBuilder<List<ScanResult>>(
      stream: flutterBlue.scanResults,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final devices = snapshot.data;
          return Column(
            children: [
              const Text('Available Devices:'),
              if (devices != null)
                for (var device in devices)
                  ListTile(
                    title: Text(device.device.name),
                    onTap: () => _connectToDevice(device.device),
                  ),
            ],
          );
        } else {
          return const Text('Scanning for devices...'); // Added 'const' keyword
        }
      },
    );
  }

  Widget _buildChatArea() {
    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(messages[index]),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              decoration: const InputDecoration(labelText: 'Type a message'), // Added 'const' keyword
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send), // Added 'const' keyword
            onPressed: () => _sendMessage(),
          ),
        ],
      ),
    );
  }

  Future<void> _connectToDevice(BluetoothDevice device) async {
    try {
      await device.connect();
      List<BluetoothService> services = await device.discoverServices();

      // Assuming there is a custom service with a custom characteristic for messaging
        BluetoothService customService = services.firstWhere(
        (service) => service.uuid.toString() == 'your_custom_service_uuid'
      );

      characteristic = customService.characteristics.firstWhere(
        (char) => char.uuid.toString() == 'your_custom_characteristic_uuid',
      );

      // Set up notifications for incoming messages
      await characteristic?.setNotifyValue(true);
      characteristic!.value.listen((value) {
        setState(() {
          messages.add(String.fromCharCodes(value));
        });
      });

      setState(() {
        connectedDevice = device;
      });
        } catch (e) {
      // Replace print statement with a logging framework
      debugPrint('Error connecting to the device: $e');
    }
  }

  Future<void> _sendMessage() async {
    if (characteristic != null && connectedDevice != null) {
      String message = messageController.text;
      if (message.isNotEmpty) {
        await characteristic!.write(message.codeUnits);
        setState(() {
          messages.add('You: $message');
          messageController.clear();
        });
      }
    }
  }
}
*/
