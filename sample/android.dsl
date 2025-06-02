workspace extends workspace.dsl {

    model {

        element !android {
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

        # Relationships
        shopper -> eCommerce.android.krogerPay "Pay for order"
        eCommerce.android.krogerPay -> eCommerce.android.core "Select payment method"
        eCommerce.android.core -> eCommerce.android.tmx "Verify payment method"
        eCommerce.android.tmx -> lexisNexus.tms "Ask LexisNexus to verify"
        eCommerce.android.core -> eCommerce.android.fraudForce "Check for fraud"
        eCommerce.android.fraudForce -> transUnion.ff "Ask TransUnion if fraudulent"
        eCommerce.android.core -> eCommerce.android.inmobile "Check for fraud"
        eCommerce.android.inmobile -> amex.inmobile "Ask Amex if fraudulent"
        
        shopper -> eCommerce.android.main "Taps featured search result"
        eCommerce.android.main -> eCommerce.android.deeplink "Process deeplink"
        eCommerce.android.main -> eCommerce.android.telemetry "Create and report Metron"
        eCommerce.android.main -> eCommerce.android.firebaseAnalytics "Process Metron and send event"
        eCommerce.android.firebaseAnalytics -> google.firebaseAnalytics "Send event
        eCommerce.android.main -> eCommerce.mobileApi.clickstream "Process Metron and send event"
        
        shopper -> eCommerce.android.main "Unintentional crash"
        eCommerce.android.main -> eCommerce.android.firebaseCrashlytics "Send crash stack and metadata"
        eCommerce.android.firebaseCrashlytics -> google.firebaseCrashlytics "Send crash stack and metadata"
    }
}
