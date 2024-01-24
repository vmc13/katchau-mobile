import 'package:flutter/material.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData>  with TickerProviderStateMixin {
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
          unselectedLabelColor: Color.fromARGB(255, 225, 166, 131),
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
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 50),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "76.020.488/0001-80",
                            style: TextStyle(fontSize: 16),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Evaldo Marques da Silva",
                            style: TextStyle(fontSize: 16),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "BRA2E79",
                            style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "R. Um, 1894 - Colorado, Teresina - PI, 64083-010",
                              style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "R. Tenente Cardoso - Centro, Franca - SP, 14401-150",
                              style: TextStyle(fontSize: 16),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "150",
                                style: TextStyle(fontSize: 16),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "500",
                                style: TextStyle(fontSize: 16),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "25/02/2024",
                                style: TextStyle(fontSize: 16),
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Pendente",
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
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
          const Center(
            child: Text("Rotas"),
          ),
        ],
      ),
    );
  }
}