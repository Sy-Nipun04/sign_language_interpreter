import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

class CapturePage extends StatefulWidget {
  const CapturePage({super.key});

  @override
  State<CapturePage> createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage> {
  late CameraController cameraController;
  Future<void>? _initializeControllerFuture;
  String output = "Hello";

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    final firstCamera = cameras.first;
    cameraController = CameraController(
      // Initializes the controller here
      firstCamera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = cameraController.initialize();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Capture")),
      body: Column(
        children: [
          //Camera Preview
          Expanded(
            flex: 3,
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(cameraController);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),

          //UI Overlay
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                output,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cameraController.dispose(); //Clean up camera when leaving
    super.dispose();
  }
}
