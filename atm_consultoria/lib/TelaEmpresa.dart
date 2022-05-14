import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a Empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    )
                  )
                ]
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim quam eu molestie rutrum. Etiam quis euismod urna. In congue neque non mi hendrerit ullamcorper. In dignissim accumsan libero eget molestie. Suspendisse nunc ipsum, sollicitudin elementum dui ut, consectetur pulvinar tortor. In mi turpis, vestibulum in velit eget, aliquet luctus lorem. In tincidunt nisl leo, porttitor placerat purus pellentesque a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam congue mollis dolor et dapibus. Phasellus sed tellus sit amet lectus consequat ultricies eu nec mauris. Maecenas accumsan facilisis rutrum. Vestibulum in cursus diam. Maecenas scelerisque metus eget orci faucibus, fermentum fringilla lectus semper. Vivamus non felis eget tellus maximus feugiat. Maecenas eget maximus massa."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim quam eu molestie rutrum. Etiam quis euismod urna. In congue neque non mi hendrerit ullamcorper. In dignissim accumsan libero eget molestie. Suspendisse nunc ipsum, sollicitudin elementum dui ut, consectetur pulvinar tortor. In mi turpis, vestibulum in velit eget, aliquet luctus lorem. In tincidunt nisl leo, porttitor placerat purus pellentesque a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam congue mollis dolor et dapibus. Phasellus sed tellus sit amet lectus consequat ultricies eu nec mauris. Maecenas accumsan facilisis rutrum. Vestibulum in cursus diam. Maecenas scelerisque metus eget orci faucibus, fermentum fringilla lectus semper. Vivamus non felis eget tellus maximus feugiat. Maecenas eget maximus massa."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim quam eu molestie rutrum. Etiam quis euismod urna. In congue neque non mi hendrerit ullamcorper. In dignissim accumsan libero eget molestie. Suspendisse nunc ipsum, sollicitudin elementum dui ut, consectetur pulvinar tortor. In mi turpis, vestibulum in velit eget, aliquet luctus lorem. In tincidunt nisl leo, porttitor placerat purus pellentesque a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam congue mollis dolor et dapibus. Phasellus sed tellus sit amet lectus consequat ultricies eu nec mauris. Maecenas accumsan facilisis rutrum. Vestibulum in cursus diam. Maecenas scelerisque metus eget orci faucibus, fermentum fringilla lectus semper. Vivamus non felis eget tellus maximus feugiat. Maecenas eget maximus massa."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim quam eu molestie rutrum. Etiam quis euismod urna. In congue neque non mi hendrerit ullamcorper. In dignissim accumsan libero eget molestie. Suspendisse nunc ipsum, sollicitudin elementum dui ut, consectetur pulvinar tortor. In mi turpis, vestibulum in velit eget, aliquet luctus lorem. In tincidunt nisl leo, porttitor placerat purus pellentesque a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam congue mollis dolor et dapibus. Phasellus sed tellus sit amet lectus consequat ultricies eu nec mauris. Maecenas accumsan facilisis rutrum. Vestibulum in cursus diam. Maecenas scelerisque metus eget orci faucibus, fermentum fringilla lectus semper. Vivamus non felis eget tellus maximus feugiat. Maecenas eget maximus massa."
                )
              )
            ],
          )
        ),
      )
    );
  }
}
