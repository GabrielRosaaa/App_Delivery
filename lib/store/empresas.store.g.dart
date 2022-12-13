part of 'empresas.store.dart';

mixin _$EmpresaStore on _EmpresaStoreBase, Store {
  late final _$idAtom = Atom(name: '_EmpresaStoreBase.id', context: context);

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$_EmpresaStoreBaseActionController =
      ActionController(name: '_EmpresaStoreBase', context: context);

  @override
  void addId(String id) {
    final _$actionInfo = _$_EmpresaStoreBaseActionController.startAction(
        name: '_EmpresaStoreBase.addId');
    try {
      return super.addId(id);
    } finally {
      _$_EmpresaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id}
    ''';
  }
}
