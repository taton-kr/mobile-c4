workspace extends ../catalog.dsl {

    model {
        # Google services
        !element google {
            tags "Software System 3p"

            # Firebase services
            firebase = container "Firebase Services" {
                # Pre-release builds of the mobile applications
                firebaseAppDistribution = component "Firebase App Distribution" {
                    tags "Container 3p"
                }
                # Marketing and Advertising analytics
                firebaseAnalytics = component "Firebase Analytics Service" {
                    tags "Container 3p"
                }
                # Crash reporting
                firebaseCrashlytics = component "Firebase Crashlytics Service" {
                    tags "Container 3p"
                }
                # Android push notifications
                firebaseMessaging = component "Firebase Messaging Service" {
                    tags "Container 3p"
                }
                # Performance benchmarking
                firebasePerformance = component "Firebase Performance Service" {
                    tags "Container 3p"
                }
            }
        }
    }
