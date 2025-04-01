import 'dart:async';
import 'dart:typed_data';

import '../flutter_blue_plus.dart';

abstract class BluetoothDeviceInterface {
  DeviceIdentifier get remoteId;

  String get platformName;

  String get advName;

  List<BluetoothService> get servicesList;

  void cancelWhenDisconnected(StreamSubscription subscription, {bool next = false, bool delayed = false});

  bool get isAutoConnectEnabled;

  bool get isConnected;

  bool get isDisconnected;

  Future<void> connect({
    Duration timeout = const Duration(seconds: 35),
    int? mtu = 512,
    bool autoConnect = false,
  });

  Future<void> disconnect({
    int timeout = 35,
    bool queue = true,
    int androidDelay = 2000,
  });

  Future<List<BluetoothService>> discoverServices({
    bool subscribeToServicesChanged = true,
    int timeout = 15,
  });

  DisconnectReason? get disconnectReason;

  Stream<BluetoothConnectionState> get connectionState;

  int get mtuNow;

  Stream<int> get mtu;

  Stream<void> get onServicesReset;

  Future<int> readRssi({int timeout = 15});

  Future<int> requestMtu(int desiredMtu, {double predelay = 0.35, int timeout = 15});

  Future<void> requestConnectionPriority({
    required ConnectionPriority connectionPriorityRequest,
  });

  Future<void> setPreferredPhy({
    required int txPhy,
    required int rxPhy,
    required PhyCoding option,
  });

  Future<void> createBond({int timeout = 90, Uint8List? pin});

  Future<void> removeBond({int timeout = 30});

  Future<void> clearGattCache();

  Stream<BluetoothBondState> get bondState;

  BluetoothBondState? get prevBondState;
}
