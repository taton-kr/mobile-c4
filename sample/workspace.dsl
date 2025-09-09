workspace "Context" "Kroger's Mobile Stuff" {

    !identifiers hierarchical

    model {
        shopper = person "Shopper"
        
        # Kroger eCommerce system
        eCommerce = softwareSystem "Kroger eCommerce System" {
            # Kroger Android mobile eCommerce application
            !include model/android.dsl

            # Kroger iOS mobile eCommerce application
            !include model/ios.dsl

            # Kroger mobile API services
            !include model/mobileapi.dsl
        }

        # AmEx services
        !include model/amex.dsl

        # Google services
        !include model/google.dsl

        # LexisNexus services
        !include model/lexisnexus.dsl

        # TransUnion services
        !include model/transunion.dsl

        # Android Relationships
        !include model/relationships/android.dsl
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