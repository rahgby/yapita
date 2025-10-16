import 'package:flutter/material.dart';

class PantallaHogar extends StatelessWidget {
  const PantallaHogar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 🔶 Fondo de pantalla
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondo.png"),
            fit: BoxFit.cover,
          ),
        ),

        // 🔶 Estructura principal
        child: Column(
          children: [
            // 🟧 HEADER — fuera del SafeArea, pegado arriba
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: const Color(0xFFFFEA96),
              child: Image.asset(
                'assets/yapitatext.png',
                height: 80, //
                width: 200,
                fit: BoxFit.contain,
              ),
            ),


            // 🔵 CONTENIDO DENTRO DEL SAFEAREA
            Expanded(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height: 0), // espacio desde el header


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.flash_on, size: 24), // energía
                          label: const Text("3000"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFEA96),
                            foregroundColor: const Color(0xFF9A2727),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_money, size: 24), // ícono de dólar
                          label: const Text("20.00"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFEA96),
                            foregroundColor: const Color(0xFF9A2727),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                          ),
                        ),
                      ],
                    )


                    ,

                    SizedBox(height:180),

                    // 🟠 Círculo central
                    Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.emoji_events, size: 24), // ícono de ranking
                      label: const Text("Ranking"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFEA96),    // mismo color de fondo
                        foregroundColor: const Color(0xFF9A2727),    // mismo color de letra
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,                               // mismo tamaño de letra
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16), // mismo tamaño del botón
                      ),
                    ),


                    const Spacer(),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // 🔽 Menú inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFEA96),
        selectedItemColor: const Color(0xFF9A2727),
        unselectedItemColor: const Color(0xFF9A2727),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.checkroom),
            label: 'Atuendo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: 'Atrapar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            // 🔙 Primer item: vuelve a la pantalla anterior
            Navigator.pop(context);
          } else if (index == 0) {
            // Inicio: podrías hacer Navigator.pushNamed(context, '/inicio');
          } else if (index == 2) {
            // Ajustes: navegar a la pantalla de ajustes
          }
        },
      ),

    );
  }

}
