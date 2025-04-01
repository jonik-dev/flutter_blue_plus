import 'package:flutter_blue_plus/flutter_blue_plus.dart';

abstract class BluetoothCharacteristicInterface {
  DeviceIdentifier get remoteId;
  Guid get serviceUuid;
  Guid get characteristicUuid;

  /// Convenience accessor
  Guid get uuid;

  /// Convenience accessor
  BluetoothDevice get device;

  /// Properties from known services
  CharacteristicProperties get properties;

  /// Descriptors from known services
  List<BluetoothDescriptor> get descriptors;

  /// Last known value of the characteristic
  List<int> get lastValue;

  /// Stream of last values (including re-emitting the last value on subscription)
  Stream<List<int>> get lastValueStream;

  /// Stream of values received (read or notification)
  Stream<List<int>> get onValueReceived;

  /// Whether notifications or indications are enabled
  bool get isNotifying;

  /// Read value from the characteristic
  Future<List<int>> read({int timeout = 15});

  /// Write value to the characteristic
  Future<void> write(
    List<int> value, {
    bool withoutResponse = false,
    bool allowLongWrite = false,
    int timeout = 15,
  });

  /// Enable or disable notifications or indications
  Future<bool> setNotifyValue(
    bool notify, {
    int timeout = 15,
    bool forceIndications = false,
  });

  @Deprecated('Use remoteId instead')
  DeviceIdentifier get deviceId;

  @Deprecated('Use lastValueStream instead')
  Stream<List<int>> get value;

  @Deprecated('Use onValueReceived instead')
  Stream<List<int>> get onValueChangedStream;
}
