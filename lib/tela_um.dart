import 'package:flutter/material.dart';

class Colaborador extends StatefulWidget {
  @override
  _ColaboradorState createState() => _ColaboradorState();
}

class _ColaboradorState extends State<Colaborador> {
  final listaColaborador = [
    {'nome':'Juliana Albuquerque', 'cargo':'Coordenadora de apoio', 'telefone':'(81) 99731-8333', 'email':'julianaalbuquerque@email.com', 'imagem': 'Juliana Albuquerque.png'},
    {'nome':'Ângela Taís', 'cargo':'Chefe de Obras', 'telefone':'(81) 99762-9832' , 'email':'angelatais@email.com', 'imagem': 'Ângela Taís.png'},
    {'nome':'Carlos Alexandre', 'cargo':'Suporte', 'telefone':'(81) 9631-2343' , 'email':'carlosalexandre@email.com', 'imagem': 'Carlos Alexandre.png'},
    {'nome':'Ana Beatriz', 'cargo':'Atendente', 'telefone':'(81) 99746-2398' , 'email':'anabeatriz@email.com', 'imagem': 'Ana Beatriz.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaColaborador.length,
      itemBuilder: (context, i){
        var dados = listaColaborador[i];
        return Column(
          children: [
            Row(
              children: [
                Image.asset("assets/"+dados['imagem'].toString(), width: 70,),
                Column(
                  children: [
                    Text(dados['nome'].toString(),
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                    ),
                    Text(dados['cargo'].toString()
                    ),
                     Text(dados['telefone'].toString()
                    ),
                     Text(dados['email'].toString()
                    ),
                    
                    
                  ],
                ),
              ],
              ),
              Divider(color:Colors.red),
          ],
        );
      },
      
    );
  }
}