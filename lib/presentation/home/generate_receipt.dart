import 'package:flutter/material.dart';

class GenerateReceipt extends StatefulWidget {
  const GenerateReceipt({super.key});

  @override
  State<GenerateReceipt> createState() => _GenerateReceiptState();
}

class _GenerateReceiptState extends State<GenerateReceipt> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Comprovante'),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Icon(
                Icons.local_shipping_rounded,
                color: Color(0xFF914C00),
                size: 80,
              ),
              const SizedBox(height: 10),
              const Text(
                "Carga - Piauí Milhos",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF383330),
                    fontSize: 20),
              ),
              const Text(
                "NF: 000123456",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF383330),
                    fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Divider(
                height: 25,
                thickness: 1.5,
                indent: 0,
                endIndent: 0,
                color: Color(0xFF914C00),
              ),
              const SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "CNPJ",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "76.020.488/0001-80",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Motorista",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "Evaldo Marques da Silva",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Placa do veículo",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "BRA2E79",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Origem",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "R. Um, 1894 - Colorado, Teresina - PI, 64083-010",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF383330),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Destino",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "R.Tenente Cardoso - Centro, Franca - SP, 14401-150",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF383330),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "KM Inicial",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "150 km",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "KM Final",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "500 km",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Previsão de entrega",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "25/02/2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                              color: Color(0xFF914C00),
                            ),
                          ),
                          Text(
                            "Pendente",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF383330),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          final snackBar = SnackBar(
                                  content: const Text("Comprovante salvo!"),
                                  action: SnackBarAction(label: "Fehcar", onPressed: () {}),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF914C00)),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: const Text(
                          'Salvar comprovante',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )),
                  )
                ],
                
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
