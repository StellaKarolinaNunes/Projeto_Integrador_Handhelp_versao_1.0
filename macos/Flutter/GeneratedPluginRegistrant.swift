//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import flutter_tts
<<<<<<< HEAD
import package_info_plus
=======
import rive_common
>>>>>>> origin/main
import video_player_avfoundation
import wakelock_plus

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FlutterTtsPlugin.register(with: registry.registrar(forPlugin: "FlutterTtsPlugin"))
<<<<<<< HEAD
  FPPPackageInfoPlusPlugin.register(with: registry.registrar(forPlugin: "FPPPackageInfoPlusPlugin"))
=======
  RivePlugin.register(with: registry.registrar(forPlugin: "RivePlugin"))
>>>>>>> origin/main
  FVPVideoPlayerPlugin.register(with: registry.registrar(forPlugin: "FVPVideoPlayerPlugin"))
  WakelockPlusMacosPlugin.register(with: registry.registrar(forPlugin: "WakelockPlusMacosPlugin"))
}
