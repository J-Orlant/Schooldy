import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kksi/providers/camera_save.dart';
import 'package:kksi/shared/theme.dart';
import 'package:provider/provider.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const CameraPage({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int selectedCamere = 0;
  List<File> capturedImages = [];

  initializeCamera(int cameraIndex) {
    _controller = CameraController(
      widget.cameras[cameraIndex],
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void initState() {
    initializeCamera(selectedCamere);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Column(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_controller);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Switch Camera Button
              IconButton(
                onPressed: () {
                  if (widget.cameras.length > 1) {
                    setState(() {
                      selectedCamere = selectedCamere == 0 ? 1 : 0;
                      initializeCamera(selectedCamere);
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Tidak Ada Camera kedua',
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                icon: Icon(
                  Icons.switch_camera_rounded,
                  color: kWhiteColor,
                ),
              ),
              Consumer<CameraSave>(
                builder: (context, cameraSave, _) => GestureDetector(
                  onTap: () async {
                    await _initializeControllerFuture;
                    var xFile = await _controller.takePicture();
                    setState(() {
                      // capturedImages.add(File(xFile.path));
                      cameraSave.capturedImage.add(File(xFile.path));
                      Navigator.pop(context, xFile);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  image: capturedImages.isNotEmpty
                      ? DecorationImage(
                          image: FileImage(capturedImages.last),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
