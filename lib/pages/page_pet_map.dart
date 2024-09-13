import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PetMapPage extends StatefulWidget {

  const PetMapPage({super.key});

  @override
  State<PetMapPage> createState() => _PetMapPageState();
}

class _PetMapPageState extends State<PetMapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-33.9083447, 151.2053754),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "Pet Tracing",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 109,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 22),
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5.47),
                    color: Color(0x0d000000),
                    blurRadius: 43.78,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  Text(
                    "Beagle",
                    style: const TextStyle(
                      fontSize: 19,
                      fontFamily: "alijiankangti85b",
                      color: Color(0xFF141415),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: ThemeColor.themeSubText2Color,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("1.5 kilometers",
                          style: GoogleFonts.inter(
                            fontSize: 19,
                            color: ThemeColor.themeSubText2Color,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ThemeColor.themeYellow,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4,9",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "alijiankangti45r",
                          color: const Color(0xFF5F5F63),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "20 Comments",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "alijiankangti45r",
                          color: const Color(0xFF5F5F63),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
