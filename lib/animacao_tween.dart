import 'package:flutter/material.dart';
class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({super.key});

  @override
  State<AnimacaoTween> createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {

  static ColorTween tweenColor = ColorTween(begin: Colors.grey, end: Colors.green);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: tweenColor, 
      duration: Duration(seconds: 10), 
      child: Image.asset("imagem/imagen.jpg"),
      builder: (context, Color? cor,  widget){
        return ColorFiltered(
          colorFilter: ColorFilter.mode(cor!, BlendMode.overlay),
          child: widget,
          );
      }
      );
      
      //metodo para rodar algo
      /*
      TweenAnimationBuilder(
        curve: Curves.easeInCirc,
        tween:Tween<double>(begin: 0, end: 6.28), 
        duration: Duration(seconds: 3),
        builder: (context, double angulo, Widget){
        return Transform.rotate(
         angle: angulo,
         child: Image.asset("imagem/unitel.webp")
       );

        }
      )
      */

      /*
      child: Transform.translate(
        offset: Offset(3, 1),
         child: Image.asset("imagem/unitel.webp")
        ),
      */

      /*
      child: Transform.rotate(
      angle: 6.28,
      child: Image.asset("imagem/unitel.webp")
      ),
      */
  }
}