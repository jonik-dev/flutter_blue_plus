import 'dart:async';

import '../flutter_blue_plus.dart';

abstract class FlutterBluePlusInterface {
  Future<void> setOptions({bool showPowerAlert = true, bool restoreState = false});
  Future<void> turnOn({int timeout = 60});
  Future<List<BluetoothDeviceInterface>> systemDevices(List<Guid> withServices);
  Future<void> startScan({
    List<Guid> withServices = const [],
    List<String> withRemoteIds = const [],
    List<String> withNames = const [],
    List<String> withKeywords = const [],
    List<MsdFilter> withMsd = const [],
    List<ServiceDataFilter> withServiceData = const [],
    Duration? timeout,
    Duration? removeIfGone,
    bool continuousUpdates = false,
    int continuousDivisor = 1,
    bool oneByOne = false,
    bool androidLegacy = false,
    AndroidScanMode androidScanMode = AndroidScanMode.lowLatency,
    bool androidUsesFineLocation = false,
    List<Guid> webOptionalServices = const [],
  });
  Future<void> stopScan();
  void cancelWhenScanComplete(StreamSubscription subscription);
  Future<void> setLogLevel(LogLevel level, {color = true});
  Future<PhySupport> getPhySupport();
  void log(String s);
  LogLevel get logLevel;
  Future<bool> get isSupported;
  BluetoothAdapterState get adapterStateNow;
  Future<String> get adapterName;
  Stream<bool> get isScanning;
  bool get isScanningNow;
  List<ScanResult> get lastScanResults;
  Stream<List<ScanResult>> get scanResults;
  Stream<List<ScanResult>> get onScanResults;
  Stream<String> get logs;
  Stream<BluetoothAdapterState> get adapterState;
  List<BluetoothDeviceInterface> get connectedDevices;
  Future<List<BluetoothDeviceInterface>> get bondedDevices;
}
