workspace extends ../workspace.dsl {
    model {
        !element android {
            banner = container "Banner Application" {
                # Application modules
                main = component "Digital Coupons Project"

                # Kroger SDKs
                kat = component "Kroger Analytics SDK"
                telemetry = component "Kroger Telemetry SDK"

                # Third-party SDKs
                adobe = component "Adobe SDK" {
                    tags "Component 3p"
                }

                dynatrace = component "Dynatrace SDK" {
                    tags "Component 3p"
                }

                firebase = component "Google Firebase SDK" {
                    tags "Component 3p"
                }
            }

            os = container "Operating System" {
                tags "Container 3p"

                camera = component "Camera" {
                    tags "Component 3p"
                }

                console = component "Console" {
                    tags "Component 3p"
                }
            }
        }

        # Relationships
        ## Launch
        shopper -> android.banner.main "Launch"
        android.banner.main -> android.banner.adobe "Initialize"
        android.banner.adobe -> www.adobe.analytics "Begin session"
        android.banner.main - android.banner.dynatrace "Initialize"
        android.banner.dynatrace -> www.dynatrace.telemetry "Begin session"
        android.banner.main -> android.banner.firebase "Initialize"
        android.banner.firebase -> www.google.firebaseAnalytics "Begin session"
        
        ## Report Metron to Telemeter
        android.banner.main -> android.banner.telemetry "Report Metron"
        android.banner.telemetry -> android.banner.dynatrace "Send action"
        android.banner.dynatrace -> www.dynatrace.telemetry "Send action"
        android.banner.telemetry -> android.banner.kat "Send event"
        android.banner.kat -> www.kroger.clickstream "Send event"
        android.banner.telemetry -> android.banner.firebase "Send event"
        android.banner.firebase -> www.google.firebaseAnalytics "Send event"
        android.banner.telemetry -> android.os.console "Log to console"
    }
}
