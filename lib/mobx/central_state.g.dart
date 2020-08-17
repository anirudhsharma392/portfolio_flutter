// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'central_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CentralState on CentralStateBase, Store {
  final _$swipeflagAtom = Atom(name: 'CentralStateBase.swipeflag');

  @override
  bool get swipeflag {
    _$swipeflagAtom.context.enforceReadPolicy(_$swipeflagAtom);
    _$swipeflagAtom.reportObserved();
    return super.swipeflag;
  }

  @override
  set swipeflag(bool value) {
    _$swipeflagAtom.context.conditionallyRunInAction(() {
      super.swipeflag = value;
      _$swipeflagAtom.reportChanged();
    }, _$swipeflagAtom, name: '${_$swipeflagAtom.name}_set');
  }

  final _$rocketStateAtom = Atom(name: 'CentralStateBase.rocketState');

  @override
  String get rocketState {
    _$rocketStateAtom.context.enforceReadPolicy(_$rocketStateAtom);
    _$rocketStateAtom.reportObserved();
    return super.rocketState;
  }

  @override
  set rocketState(String value) {
    _$rocketStateAtom.context.conditionallyRunInAction(() {
      super.rocketState = value;
      _$rocketStateAtom.reportChanged();
    }, _$rocketStateAtom, name: '${_$rocketStateAtom.name}_set');
  }

  final _$teddyStateAtom = Atom(name: 'CentralStateBase.teddyState');

  @override
  String get teddyState {
    _$teddyStateAtom.context.enforceReadPolicy(_$teddyStateAtom);
    _$teddyStateAtom.reportObserved();
    return super.teddyState;
  }

  @override
  set teddyState(String value) {
    _$teddyStateAtom.context.conditionallyRunInAction(() {
      super.teddyState = value;
      _$teddyStateAtom.reportChanged();
    }, _$teddyStateAtom, name: '${_$teddyStateAtom.name}_set');
  }
}
