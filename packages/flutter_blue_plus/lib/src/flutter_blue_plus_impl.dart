import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class FlutterBluePlusImpl implements FlutterBluePlusInterface {
  @override
  Future<void> setOptions({
    bool showPowerAlert = true,
    bool restoreState = false,
  }) {
    return FlutterBluePlus.setOptions(showPowerAlert: showPowerAlert, restoreState: restoreState);
  }

  @override
  Future<void> turnOn({int timeout = 60}) {
    return FlutterBluePlus.turnOn(timeout: timeout);
  }

  @override
  Future<List<BluetoothDeviceInterface>> systemDevices(List<Guid> withServices) {
    return FlutterBluePlus.systemDevices(withServices);
  }

  @override
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
  }) {
    return FlutterBluePlus.startScan(
        withServices: withServices,
        withRemoteIds: withRemoteIds,
        withNames: withNames,
        withKeywords: withKeywords,
        withMsd: withMsd,
        withServiceData: withServiceData,
        timeout: timeout,
        removeIfGone: removeIfGone,
        continuousUpdates: continuousUpdates,
        continuousDivisor: continuousDivisor,
        oneByOne: oneByOne,
        androidLegacy: androidLegacy,
        androidScanMode: androidScanMode,
        androidUsesFineLocation: androidUsesFineLocation,
        webOptionalServices: webOptionalServices);
  }

  @override
  Future<void> stopScan() {
    return FlutterBluePlus.stopScan();
  }

  @override
  void cancelWhenScanComplete(StreamSubscription subscription) {
    return FlutterBluePlus.cancelWhenScanComplete(subscription);
  }

  @override
  Future<void> setLogLevel(LogLevel level, {color = true}) {
    return FlutterBluePlus.setLogLevel(level, color: color);
  }

  @override
  Future<PhySupport> getPhySupport() {
    return FlutterBluePlus.getPhySupport();
  }

  @override
  void log(String s) {
    return FlutterBluePlus.log(s);
  }

  @override
  LogLevel get logLevel => FlutterBluePlus.logLevel;

  @override
  Future<bool> get isSupported => FlutterBluePlus.isSupported;

  @override
  BluetoothAdapterState get adapterStateNow => FlutterBluePlus.adapterStateNow;

  @override
  Future<String> get adapterName => FlutterBluePlus.adapterName;

  @override
  Stream<bool> get isScanning => FlutterBluePlus.isScanning;

  @override
  bool get isScanningNow => FlutterBluePlus.isScanningNow;

  @override
  List<ScanResult> get lastScanResults => FlutterBluePlus.lastScanResults;

  @override
  Stream<List<ScanResult>> get scanResults => FlutterBluePlus.scanResults;

  @override
  Stream<List<ScanResult>> get onScanResults => FlutterBluePlus.onScanResults;

  @override
  Stream<String> get logs => FlutterBluePlus.logs;

  @override
  Stream<BluetoothAdapterState> get adapterState => FlutterBluePlus.adapterState;

  @override
  List<BluetoothDeviceInterface> get connectedDevices => FlutterBluePlus.connectedDevices;

  @override
  Future<List<BluetoothDeviceInterface>> get bondedDevices => FlutterBluePlus.bondedDevices;
}
