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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildWeatherSummaryCards(state),
              _buildCityListContent(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildWeatherSummaryCards(CityState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCard(
                  state.lowestTemperatureCity, '${state.lowestTemperature}°C'),
              _buildCard('Ciudades', '${state.favoriteCities.length}'),
              _buildCard(state.highestTemperatureCity,
                  '${state.highestTemperature}°C'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String value) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityListContent(CityState state) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCityTitle(),
          state.favoriteCities.isEmpty
              ? _buildDefaultMessage()
              : _buildFavoriteCityList(state),
        ],
      ),
    );
  }

  Widget _buildCityTitle() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
      child: Text(
        'Mis ciudades:',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFavoriteCityList(CityState state) {
    return Expanded(
      child: ListView.separated(
        itemCount: state.favoriteCities.length,
        itemBuilder: (context, index) => _buidCityTile(
          context,
          state.favoriteCities[index],
        ),
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
      ),
    );
  }

  Widget _buidCityTile(BuildContext context, City city) {
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

  Widget _buildDefaultMessage() {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Center(
        child: Text('No hay ciudades favoritas aun'),
      ),
    );
  }
}
