import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:jmapp/movie_app/src/modelos/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Swiper(
        itemHeight: _screenSize.height,
        itemWidth: _screenSize.width,
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
                image: NetworkImage(peliculas[index].getPosterImg()),
                placeholder: AssetImage("assets/img/loading.gif"),
                fit: BoxFit.fill),
          );
        },
        itemCount: peliculas.length,
      ),
    );
  }
}
