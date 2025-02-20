import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/base/data/model/city.dart';
import 'package:bnka_test/base/presentation/bloc/city/city_bloc.dart';
import 'package:bnka_test/base/presentation/bloc/tab/bloc/tab_bloc.dart';

class CityListView extends StatelessWidget {
  final List<City> cities = const [
    City(name: 'London', country: 'UK', lat: 51.5074, long: -0.1278),
    City(name: 'Paris', country: 'France', lat: 48.8566, long: 2.3522),
    City(name: 'New York', country: 'USA', lat: 40.7128, long: -74.0060),
    City(name: 'Tokyo', country: 'Japan', lat: 35.6895, long: 139.6917),
    City(name: 'Sydney', country: 'Australia', lat: -33.8688, long: 151.2093),
  ];

  const CityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 70, 16, 0),
            child: Text(
              'Listado de ciudades',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) => CityTile(
                city: cities[index],
                onFavorite: () => _handleFavorite(context, cities[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleFavorite(BuildContext context, City city) {
    final bloc = context.read<CityBloc>();
    final state = bloc.state;

    if (state.favoriteCities.contains(city)) {
      bloc.add(CityEvent.removeFavorite(city: city));
    } else {
      bloc.add(CityEvent.addFavorite(city: city));
      context.read<TabBloc>().add(const TabEvent.changeTab(0));
    }
  }
}

class CityTile extends StatelessWidget {
  final City city;
  final VoidCallback onFavorite;

  const CityTile({super.key, required this.city, required this.onFavorite});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityBloc, CityState>(builder: (context, state) {
      final isFavorite = state.favoriteCities.contains(city);
      return ListTile(
        leading: const Icon(Icons.location_city),
        title: Text('${city.name}, ${city.country}'),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
          onPressed: onFavorite,
        ),
      );
    });
  }
}
