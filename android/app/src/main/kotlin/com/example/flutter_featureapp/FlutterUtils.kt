package com.example.flutter_featureapp

import android.content.Context
import androidx.annotation.Keep
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager

const val TAG = "FlutterUtils"

@Keep
class FlutterUtils {
    lateinit var flutterEngine: FlutterEngine
    var deferredComponentManager: PlayStoreDeferredComponentManager? = null

    fun initializeFlutterEngine(applicationContext: Context) {

        if (deferredComponentManager == null) {
            deferredComponentManager = PlayStoreDeferredComponentManager(applicationContext, null)

            FlutterInjector.setInstance(
                FlutterInjector.Builder()
                    .setDeferredComponentManager(deferredComponentManager)
                    .build()
            )
            // Instantiate a FlutterEngine.
            flutterEngine = FlutterEngine(applicationContext)

            // Start executing Dart code to pre-warm the FlutterEngine.
            flutterEngine.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )

            deferredComponentManager!!.installDeferredComponent(2, "destinationFeature")
            deferredComponentManager!!.loadDartLibrary(2, "destinationFeature")

            // Cache the FlutterEngine to be used by FlutterActivity.
            FlutterEngineCache
                .getInstance()
                .put(AppConstants.FLUTTER_MAIN_ENGINE_ID, flutterEngine)
        }
    }
}


