workspace extends KrogerSoftwareSystem.dsl {

    model {
        !element android {
            main = component "App Main"
            core = component "Core Module"
            deeplink = component "kgpDeeplink" 
            firebaseAnalytics = component "firebase-analyticsKtx" {
                tags "Component 3p"
            }
            firebaseCrashlytics = component "firebase-crashlyticsKtx" {
                tags "Component 3p"
            }
            fraudForce = component "iovationFraudForce" {
                tags "Component 3p"
            }
            inmobile = component "inmobile" {
                tags "Component 3p"
            }
            krogerPay = component "Kroger Pay Feature"
            tmx = component "threatMetrix" {
                tags "Component 3p"
            }
            telemetry = component "krogerTelemetry"

        }

    }
    
}