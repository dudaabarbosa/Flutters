import 'package:flutter/material.dart';

void main (){
  runApp(
  Home()
  );
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeStf extends StatefulWidget {
  const HomeStf({super.key});


  @override
  State<HomeStf> createState() => _HomeStfState();
}

class _HomeStfState extends State<HomeStf> {
  final _formkey = GlobalKey<FormState>();
    String cpf = '', nome = '', profissao = '', telefone = '', email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'CPF'),
            onChanged: (value) {
              cpf = value;
            },
            validator: (value){
              if(value== null || value.isEmpty){
                return "Por favor insira seu CPF";
              }
              return null;
            },
          ), 
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: 'Nome'),
            onChanged: (value) {
              nome = value;
            },
            validator: (value){
              if(value== null || value.isEmpty){
                return "Por favor insira seu nome";
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'Profissão'),
            onChanged: (value) {
              profissao = value;
            },
            validator: (value){
              if(value== null || value.isEmpty){
                return "Por favor insira sua profissão";
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(labelText: 'Telefone'),
            onChanged: (value) {
              telefone = value;
            },
            validator: (value){
              if(value== null || value.isEmpty){
                return "Por favor insira seu telefone";
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              email = value;
            },
            validator: (value){
              if(value== null || value.isEmpty){
                return "Por favor insira seu e-mail";
              }
              return null;
            },
          ),
          ElevatedButton(onPressed: (){
            if(_formkey.currentState!.validate()){
              ScaffoldMessenger.of(context).
              showSnackBar(SnackBar(content: Text("CPF: $cpf \n Nome: $nome \n Profissão: $profissao \n Telefone: $telefone \n Email: $email"))
              );
            }
          },
          child: Text("Teste"),
          ),
        ]
        )));
        }}
