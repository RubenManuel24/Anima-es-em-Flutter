import 'package:flutter/material.dart';
class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({super.key});

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  
  bool condicao = true;

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             AnimatedContainer(
              padding: EdgeInsets.all(20),
              width: condicao ? 200 : 300,
              height: condicao ? 300 : 200,
              color: condicao ? Colors.purple : Colors.white,
              child: Image.asset("imagem/unitel.webp"),
              duration: Duration(
                seconds: 3
              ),
              curve: Curves.easeInToLinear
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    condicao = !condicao;
                  });
                }, 
                child: Text("Click",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                 ),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.white,
                )
            )
          ],
        );
  }
}