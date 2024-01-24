import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> with TickerProviderStateMixin {
  // INFO CONFIG
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // ROUTE CONFIG
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-20.53021903991448, -47.4226164154784);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carga'),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFFE1A683),
          tabs: const [
            Tab(
              icon: Icon(Icons.info, color: Colors.white),
              text: 'Informações',
            ),
            Tab(
              icon: Icon(Icons.route),
              text: 'Rota',
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),

      //BODY
      body: TabBarView(
        controller: _tabController,
        children: [
          // INFOS
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 10),
              child: Column(
                children: [
                  //CNPJ
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.business_rounded, color: Color(0xFF914C00)),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CNPJ do cliente",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                          Text(
                            "76.020.488/0001-80",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF383330),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  //MOTORISTA
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Color(0xFF914C00)),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Motorista",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                          Text(
                            "Evaldo Marques da Silva",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF383330),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  //PLACA
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.call_to_action_rounded,
                          color: Color(0xFF914C00)),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Placa do veículo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                          Text(
                            "BRA2E79",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF383330),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  //ORIGEM
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: Color(0xFF914C00)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Origem",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF383330),
                              ),
                            ),
                            Text(
                              "R. Um, 1894 - Colorado, Teresina - PI, 64083-010",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF383330),
                              ),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  //DESTINO
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.my_location_sharp, color: Color(0xFF914C00)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Destino",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF383330),
                              ),
                            ),
                            Text(
                              "R. Tenente Cardoso - Centro, Franca - SP, 14401-150",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF383330),
                              ),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  //QUILOMETRAGEM
                  const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.speed_rounded, color: Color(0xFF914C00)),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KM Inicial",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF383330),
                                ),
                              ),
                              Text(
                                "150",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF383330),
                                ),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.speed_rounded, color: Color(0xFF914C00)),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KM Final",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF383330),
                                ),
                              ),
                              Text(
                                "500",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF383330),
                                ),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  // ENTREGA / STATUS
                  const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.delivery_dining, color: Color(0xFF914C00)),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Previsão de entrega",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF383330),
                                ),
                              ),
                              Text(
                                "25/02/2024",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF383330),
                                ),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.warning_amber, color: Color(0xFFEA9800)),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF383330),
                                ),
                              ),
                              Text(
                                "Pendente",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF383330),
                                ),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 45),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/adicionarRota');
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF914C00)),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: const Text(
                          'Gerar comprovante',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )),
                  )
                ],
              ),
            ),
          ),
          // ROTAS
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                mapType: MapType.satellite,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 18.0,
                ),
              ),
              Positioned(
                top: 400,
                child: Container(
                  width: 390,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 221, 197),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 30, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.document_scanner_rounded,
                              color: Color(0xFF914C00),
                              size: 30,
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Nota fiscal:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xFF383330),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    "000123456",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF383330),
                                    ),
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xFF914C00)),
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: const Text(
                                'Copiar',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 25,
                          thickness: 1.5,
                          indent: 0,
                          endIndent: 0,
                          color: Color(0xFF914C00),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "20/01",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF383330)),
                                ),
                                Text(
                                  "11:32",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF383330)),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.my_location_outlined,
                              color: Color(0xFF914C00),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: Text(
                              "Pedido chegou ao centro logístico: Praia Grande - SP",
                              overflow: TextOverflow.clip,
                            ))
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "18/01",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF383330)),
                                ),
                                Text(
                                  "09:07",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF383330)),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.local_shipping_rounded,
                              color: Color(0xFF914C00),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: Text(
                              "Pedido saiu do centro logístico",
                              overflow: TextOverflow.clip,
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
