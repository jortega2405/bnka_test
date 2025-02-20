import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/core/utils/city_list.dart';
import 'package:bnka_test/base/data/model/city.dart';
import 'package:bnka_test/base/presentation/bloc/city/city_bloc.dart';
import 'package:bnka_test/base/presentation/bloc/tab/bloc/tab_bloc.dart';

class CityListView extends StatelessWidget {
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
            child: ListView.separated(
              itemCount: cities.length,
              itemBuilder: (context, index) => _buildCityTile(
                cities[index],
                () => _handleFavorite(context, cities[index]),
              ),
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
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

BlocBuilder<CityBloc, CityState> _buildCityTile(
    City city, VoidCallback onFavorite) {
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
