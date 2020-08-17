
import 'package:mobx/mobx.dart';
part 'central_state.g.dart';

class CentralState = CentralStateBase with _$CentralState;

abstract class CentralStateBase with Store {
 double height;
 double width;
 @observable
  bool swipeflag=false;
 @observable
 String rocketState='idle';
 @observable
 String teddyState='idle';
}

final centralstate = CentralState();

