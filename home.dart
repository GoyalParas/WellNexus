import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial/models/visitModel.dart';
import 'package:trial/providers/visitsListProvider.dart';
import 'package:trial/widgets/visit_element.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  @override
  ConsumerState<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Visit> visitList = ref.watch(visitListProvider);

    final visitListWidget = VisitElement(visitList: visitList);

    return visitList.isEmpty ? const Text("No data") : visitListWidget;
  }
}
