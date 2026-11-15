

class FirebaseConfig {
  static Future<void> init(Env env) async {
    await Firebase.initializeApp();

    if (env.currentEnv == AppEnv.dev || Environment.isDev) {
      _connectToEmulators();
    }
  }

  static void _connectToEmulators() {
  
    final host = kIsWeb ? '127.0.0.1' : '10.0.2.2'; 
    FirebaseFirestore.instance.useFirestoreEmulator(host, 8086);
    // 🔐 Auth
   // FirebaseAuth.instance.useAuthEmulator(host, 9099);
    // ⚡ Functions
    FirebaseFunctions.instance.useFunctionsEmulator(host, 5001);
    //  Storage
     FirebaseStorage.instance.useStorageEmulator(host, 9199);
  }
}
