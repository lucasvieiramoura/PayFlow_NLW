import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoletoListController {
  final boletosNotifier = ValueNotifier<List<BoletoModel>>(<BoletoModel>[]);
  List<BoletoModel> get boletos => boletosNotifier.value;
  set boletos(List<BoletoModel> value) => boletosNotifier.value = value;

  BoletoListController() {
    getBoletos();
  }

  void getBoletos() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList("boletos"); //?? <String>[];
      boletos = response!.map((e) => BoletoModel.fromJson(e)).toList();
      print(boletos);
    } catch (e) {
      boletos = <BoletoModel>[];
    }
  }

  Future<void> deleteBoleto() async {
    final instance = await SharedPreferences.getInstance();
    final boletos = instance.getStringList("boletos");
    boletos!.clear();
    await instance.setStringList("boletos", boletos);
    print(boletos);
    return;
  }

  Future<void> deleteBoletoId() async {
    final instance = await SharedPreferences.getInstance();
    final boletos = instance.getKeys();
    boletos.remove(boletosNotifier.hashCode);
    //final boletos = instance.getStringList("boletos");
    //await instance.setStringList("boletos", boletos);
    print(boletos);
    return;
  }

  void dispose() {
    boletosNotifier.dispose();
  }
}
