import 'package:flutter/material.dart';

class PantallaHogar extends StatelessWidget {
  const PantallaHogar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100], // Fondo de color sólido
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            // Círculo central (simulando un "Pou")
            Container(
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  "Hogar",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Tres botones sin función
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  child: const Text("Botón 1"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  child: const Text("Botón 2"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  child: const Text("Botón 3"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Botón para volver al mapa
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Regresa al mapa
              },
              icon: const Icon(Icons.map),
              label: const Text("Volver al mapa"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
