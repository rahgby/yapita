import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'pantalla_grabacion.dart'; // Importa la nueva pantalla de grabación

const MAPBOX_ACCESO_TOKEN = 'pk.eyJ1IjoicmFoZ2J5IiwiYSI6ImNtZ3NlYnhkcTBnN3Uya3Bvc3lja25tOGkifQ.p9yRuDERTPSVKjb3JLNs_Q';
final myPosition = LatLng(40.97934, -73.939257);

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  // Función para navegar a la pantalla de grabación de video
  void _abrirGrabacionVideo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PantallaGrabacion()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa de Basura'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Mapa
          FlutterMap(
            options: MapOptions(
              initialCenter: myPosition,
              minZoom: 5,
              maxZoom: 20,
              initialZoom: 18,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
                additionalOptions: {
                  'accessToken': MAPBOX_ACCESO_TOKEN,
                  'id': 'mapbox/streets-v12',
                },
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 40.0,
                    height: 40.0,
                    point: myPosition,
                    child: const Icon(
                      Icons.person_pin,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Botón rectangular personalizado - AHORA ABRE GRABACIÓN DE VIDEO
          Positioned(
            bottom: 20,
            right: 20,
            left: 20, // Para que ocupe todo el ancho con márgenes
            child: Container(
              height: 60, // Altura del botón rectangular
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.green, Colors.lightGreen],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () => _abrirGrabacionVideo(context), // Cambiado a grabación de video
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.videocam, // Cambiado a icono de video
                        color: Colors.white,
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'GRABAR GESTOS DE BASURA', // Texto actualizado
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}