import 'package:flutter/material.dart';

class SelectedCompaniesScreen extends StatefulWidget {
  const SelectedCompaniesScreen({Key? key}) : super(key: key);

  @override
  State<SelectedCompaniesScreen> createState() => _SelectedCompaniesScreenState();
}

class _SelectedCompaniesScreenState extends State<SelectedCompaniesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('SelectedCompaniesScreen'),
    );
  }
}
