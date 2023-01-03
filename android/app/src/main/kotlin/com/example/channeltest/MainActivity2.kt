package com.example.channeltest

import android.content.Intent
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity2 : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        val channel = MethodChannel(flutterEngine.dartExecutor, "com.example.methodchanneltest1")
        channel.setMethodCallHandler(handler)
    }

    private val handler = MethodCallHandler { methodCall: MethodCall, result: MethodChannel.Result ->
        if (methodCall.method == "getPlatformVersion") {
            val a = mutableMapOf<String, String>("n" to "n","2" to "2","3" to "3")
            result.success(a)
        } else {
            result.notImplemented()
        }
    }
}
