import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/base/data/model/city.dart';
import 'package:bnka_test/base/presentation/bloc/city/city_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CityBloc, CityState>(
        builder: (context, state) {
          if (state.favoriteCities.isEmpty) {
            return const Center(
              child: Text('No favorite cities yet'),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 70, 16, 0),
                child: Text(
                  'Mis ciudades:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.favoriteCities.length,
                  itemBuilder: (context, index) => CityTile(
                    city: state.favoriteCities[index],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CityTile extends StatelessWidget {
  final City city;

  const CityTile({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_city),
      title: Text('${city.name}, ${city.country}'),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => context.read<CityBloc>().add(
              CityEvent.removeFavorite(city: city),
            ),
      ),
    );
  }
}
