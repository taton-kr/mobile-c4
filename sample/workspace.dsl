workspace "Name" "Description" {

    !identifiers hierarchical

    model {
        shopper = person "Shopper"
        
        # Kroger eCommerce system
        eCommerce = softwareSystem "Kroger eCommerce System" {
            # Kroger Android mobile eCommerce application
            android = container "Android Mobile Application" {
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
            # Kroger iOS mobile eCommerce application
            ios = container "iOS Mobile Application" {
                storePayments = component "Store Payments Package"
                wallet = component "Wallet Package"
                tmx = component "TMXProfiling Package"
            }
            # Kroger mobile API services
            mobileApi = container "Mobile API" {
                clickstream = component "Clickstream"
            }
        }
        # AmEx services
        amex = softwareSystem "AmEx Services" {
            tags "Software System 3p"
            inmobile = container "Inmobile Service" {
                tags "Container 3p"
            }
        }
        # Google services
        google = softwareSystem "Google Firebase Services" {
            tags "Software System 3p"
            firebaseAnalytics = container "Firebase Analytics Service" {
                tags "Container 3p"
            }
            firebaseCrashlytics = container "Firebase Crashlytics Service" {
                tags "Container 3p"
            }
            firebaseMessaging = container "Firebase Messaging Service" {
                tags "Container 3p"
            }
            firebasePerformance = container "Firebase Performance Service" {
                tags "Container 3p"
            }
            firebaseAppDistribution = container "Firebase App Distribution" {
                tags "Container 3p"
            }
        }
        # LexisNexus services
        lexisNexus = softwareSystem "LexisNexus Services" {
            tags "Software System 3p"
            tms = container "Threat Metrix API" {
                tags "Container 3p"
            }
        }
        # TransUnion services
        transUnion = softwareSystem "TransUnion Services" {
            tags "Software System 3p"
            ff = container "FraudForce API" {
                tags "Container 3p"
            }
        }

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

        shopper -> eCommerce.ios.storePayments "Places order"
        eCommerce.ios.storePayments -> eCommerce.ios.wallet "Selects payment method"
        eCommerce.ios.wallet -> eCommerce.ios.tmx "Verifies payment method"
        eCommerce.ios.tmx -> lexisNexus.tms "Asks LexisNexus to verify"
    }

    views {
        # Context for the Kroger eCommerce system
        systemContext eCommerce "Diagram1" {
            include *
            autolayout lr
        }

        # Kroger eCommerce system container
        container eCommerce "Diagram2" {
            include *
            autolayout lr
        }

        # LexisNexus services container
        container lexisNexus "Diagram3" {
            include *
            autolayout lr
        }
        
        # Google services container
        container google "Diagram4" {
            include *
            autolayout lr
        }

        # Kroger eCommerce Android mobile application container
        component eCommerce.android "Diagram5" {
            include *
            autolayout lr
        }

        # Kroger eCommerce iOS mobile application container
        component eCommerce.ios "Diagram6" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color #ffffff
                shape RoundedBox
            }
            element "Person" {
                background #1f1f1f
                shape person
            }
            element "Software System" {
                background #6f6f9f
            }
            element "Container" {
                background #4f4f9f
            }
            element "Component" {
                background #2f2f9f
            }
            element "Software System 3p" {
                background #9f9f9f
            }
            element "Container 3p" {
                background #7f7f7f
            }
            element "Component 3p" {
                background #5f5f5f
            }
        }
    }

    configuration {
        scope none
    }

}