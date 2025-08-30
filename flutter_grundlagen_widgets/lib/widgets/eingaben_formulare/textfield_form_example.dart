import 'package:flutter/material.dart';

class TextFieldFormExample extends StatefulWidget {
  const TextFieldFormExample({super.key});

  @override
  State<TextFieldFormExample> createState() => _TextFieldFormExampleState();
}

class _TextFieldFormExampleState extends State<TextFieldFormExample> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField & Form'), backgroundColor: Colors.teal),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Einfache TextFields:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              // Einfaches TextField
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Dein Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),

              // TextField mit Controller
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name (mit Controller)',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.edit),
                ),
              ),
              const SizedBox(height: 30),

              const Text('Form mit Validierung:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              // TextFormField mit Validierung
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name *',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte gib deinen Namen ein';
                  }
                  if (value.length < 2) {
                    return 'Name muss mindestens 2 Zeichen lang sein';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Email TextFormField
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email *',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte gib deine Email ein';
                  }
                  if (!value.contains('@')) {
                    return 'Bitte gib eine gültige Email ein';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Passwort TextFormField
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Passwort *',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte gib dein Passwort ein';
                  }
                  if (value.length < 6) {
                    return 'Passwort muss mindestens 6 Zeichen lang sein';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form ist gültig
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Formular erfolgreich abgesendet!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Formular absenden'),
                ),
              ),

              const SizedBox(height: 20),

              // Kommentar über die Unterschiede
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '💡 Unterschiede:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• TextField: Einfache Text-Eingabe\n'
                      '• TextFormField: Text-Eingabe mit Validierung\n'
                      '• Form: Container für mehrere TextFormFields\n'
                      '• GlobalKey<FormState>: Für Form-Validierung\n'
                      '• validator: Funktion für Eingabe-Überprüfung',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
