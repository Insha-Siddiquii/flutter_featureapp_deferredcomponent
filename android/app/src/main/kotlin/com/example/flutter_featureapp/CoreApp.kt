package com.example.flutter_featureapp
import com.google.android.play.core.splitcompat.SplitCompatApplication

class CoreApp: SplitCompatApplication() {
    override fun onCreate() {
        super.onCreate()
        Flutter.getFlutterUtils().initializeFlutterEngine(applicationContext)
    }
}