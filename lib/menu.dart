import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TelaEmpresa.dart';
import 'TelaCliente.dart';
import 'TelaServico.dart';
import 'TelaContato.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  void _abrirEmpresa(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  void _abrirServico(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaServico()));
  }

  void _abrirCliente(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCliente()));
  }

  void _abrirContato(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria")
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_empresa.png")
                  ),
                  GestureDetector(
                      onTap: _abrirServico,
                      child: Image.asset("images/menu_servico.png")
                  ),
                ],
              )
            ),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("images/menu_cliente.png")
                    ),
                    GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("images/menu_contato.png")
                    ),
                  ],
                )
            )
          ],
        )
      )
    );
  }
}
