package com.h.mirsad

import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileOutputStream

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.h.mirsad/share_intent"
    private var sharedFilePath: String? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        handleIntent(intent)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getSharedFilePath") {
                val path = sharedFilePath
                sharedFilePath = null // consume once
                result.success(path)
            } else {
                result.notImplemented()
            }
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        handleIntent(intent)
    }

    private fun handleIntent(intent: Intent?) {
        if (intent == null) return
        val action = intent.action
        val type = intent.type

        if (Intent.ACTION_SEND == action && type != null) {
            val uri = intent.getParcelableExtra<Uri>(Intent.EXTRA_STREAM)
            if (uri != null) {
                sharedFilePath = resolveUriToFile(uri)
            }
        } else if (Intent.ACTION_VIEW == action) {
            val uri = intent.data
            if (uri != null) {
                sharedFilePath = resolveUriToFile(uri)
            }
        }
    }

    private fun resolveUriToFile(uri: Uri): String? {
        if ("file".equals(uri.scheme, ignoreCase = true)) {
            return uri.path
        }
        return try {
            val inputStream = contentResolver.openInputStream(uri) ?: return null
            val fileName = "incoming_" + System.currentTimeMillis() + "_" + (uri.lastPathSegment ?: "file")
            val tempFile = File(cacheDir, fileName)
            FileOutputStream(tempFile).use { output ->
                inputStream.copyTo(output)
            }
            tempFile.absolutePath
        } catch (e: Exception) {
            null
        }
    }
}
