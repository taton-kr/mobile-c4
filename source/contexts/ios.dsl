workspace extends ../workspace.dsl {
    model {
        !element ios {
            banner = container "Banner Application" {
                # Application modules
                main = component "Mobile Shopper Project"

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
        ## Launch Telemetry
        shopper -> ios.banner.main "Launch"
        ios.banner.main -> ios.banner.adobe "Initialize"
        ios.banner.adobe -> www.adobe.analytics "Begin session"
        ios.banner.main - ios.banner.dynatrace "Initialize"
        ios.banner.dynatrace -> www.dynatrace.telemetry "Begin session"
        ios.banner.main -> ios.banner.firebase "Initialize"
        ios.banner.firebase -> www.google.firebaseAnalytics "Begin session"
        
        ios.banner.main -> ios.banner.telemetry "Report Metron"
        ios.banner.telemetry -> ios.banner.dynatrace "Send action"
        ios.banner.dynatrace -> www.dynatrace.telemetry "Send action"
        ios.banner.telemetry -> ios.banner.kat "Send event"
        ios.banner.kat -> www.kroger.clickstream "Send event"
        ios.banner.telemetry -> ios.banner.firebase "Send event"
        ios.banner.firebase -> www.google.firebaseAnalytics "Send event"
        ios.banner.telemetry -> ios.os.console "Log to console"
    }
}
