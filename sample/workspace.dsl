workspace "Context" "Kroger's Mobile Stuff" {

    !identifiers hierarchical

    model {
        shopper = person "Shopper"
        
        # Kroger eCommerce system
        eCommerce = softwareSystem "Kroger eCommerce System" {
            # Kroger Android mobile eCommerce application
            android = container "Android Mobile Application"

            # Kroger iOS mobile eCommerce application
            ios = container "iOS Mobile Application"

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