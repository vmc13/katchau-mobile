import 'package:flutter/material.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> with TickerProviderStateMixin {
  int currentPageIndex = 0;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carga'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.info),
              text: 'Informações',
            ),
            Tab(
              icon: Icon(Icons.route),
              text: 'Rota',
            ),
          ],
        ),
      ),

      //BODY
      body: TabBarView(
        controller: _tabController,
        children: [
          // INFOS
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(40, 20, 60, 50),
              child: Column(
                children: [
                  //CNPJ
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.business_rounded, color: Colors.green),
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
                      Icon(Icons.person, color: Colors.green),
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
                      Icon(Icons.call_to_action_rounded, color: Colors.green),
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
                      Icon(Icons.location_on_outlined, color: Colors.green),
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
                      Icon(Icons.my_location_sharp, color: Colors.green),
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
                          Icon(Icons.speed_rounded, color: Colors.green),
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
                          Icon(Icons.speed_rounded, color: Colors.green),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.delivery_dining, color: Colors.green),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.warning_amber, color: Colors.yellow),
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
                  const SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/adicionarRota');
                      },
                      child: const Text(
                        'Gerar comprovante',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ))
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

      //BOTTOM NAVIGATION
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.green,
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.business_center), label: 'Empresa'),
          NavigationDestination(icon: Icon(Icons.fire_truck), label: 'Carga'),
          NavigationDestination(icon: Icon(Icons.payment), label: 'Pagamento'),
        ],
      ),
    );
  }
}
