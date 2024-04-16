import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/empresa.dart';

void main() {
  runApp(
MaterialApp(
  home: AppAtm() ,
  debugShowCheckedModeBanner: false,
)
  );
}

class AppAtm extends StatefulWidget {
  const AppAtm({ Key? key }) : super(key: key);

  @override
  _AppAtmState createState() => _AppAtmState();
}

class _AppAtmState extends State<AppAtm> {
void abrirEmpresa(){
Navigator.push(
  context, 
  MaterialPageRoute(builder: (context) => Empresa())
  );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar (title: const Text("ATM Consultoria"),
       ),
      
     body: Container
     (padding: const  EdgeInsets.all(16),
    child:   Column
    (children: [
     Image.asset("imagens/logo.png"),
      const SizedBox(
        height: 34,
      ),
     Row(  mainAxisAlignment: MainAxisAlignment.center,
       children: [
         GestureDetector(child: Image.asset("imagens/detalhe_empresa.png"),
         onTap: abrirEmpresa,
         ),
          const SizedBox(
        height: 34,
      ),
         GestureDetector(child: Image.asset("imagens/menu_servico.png"),)
       ],
     ), 
     Row( mainAxisAlignment: MainAxisAlignment.center,
       children: [
         GestureDetector(child: Image.asset("imagens/menu_contato.png"),),
         GestureDetector(child: Image.asset("imagens/menu_cliente.png"),)
       ],
     ),

     const SizedBox(
        width: 34,

      ),
]),
),
      
    );
  }
}


  