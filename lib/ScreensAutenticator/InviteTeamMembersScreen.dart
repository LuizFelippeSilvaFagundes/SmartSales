import 'package:flutter/material.dart';

class InviteTeamMembersScreen extends StatefulWidget {
  const InviteTeamMembersScreen({super.key});

  @override
  _InviteTeamMembersScreenState createState() =>
      _InviteTeamMembersScreenState();
}

class _InviteTeamMembersScreenState extends State<InviteTeamMembersScreen> {
  final List<TextEditingController> _emailControllers = [
    TextEditingController()
  ];

  void _addEmailField() {
    setState(() {
      _emailControllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    // Limpa os controladores quando o widget é descartado
    for (var controller in _emailControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FD),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Logo
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'SmartSales',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Título do passo
                  const Text(
                    'STEP 4/4',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Subtítulo
                  const Text(
                    'Invite Team Members',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Campos de Email
                  ..._emailControllers.map((controller) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Member's Email",
                          hintText: 'memberemail@gmail.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  // Adicionar outro membro
                  TextButton.icon(
                    onPressed: _addEmailField,
                    icon: const Icon(Icons.add, color: Colors.blue),
                    label: const Text(
                      'Add another Member',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Botões de Navegação
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pop(context); // Volta para a tela anterior
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.blue),
                        label: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/RegistrationSucessScreen');
                        },
                        icon: const Icon(Icons.arrow_forward, color: Colors.white),
                        label: const Text(
                          'Next Step',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
