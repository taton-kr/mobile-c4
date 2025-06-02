workspace "Kroger Mobile" "Kroger Mobile Applications System Context" {
    !identifiers hierarchical

    model {
        # Personas
        author = person "Content Author"
        guest = person "Guest"
        patient = person "Patient"
        shopper = person "Shopper"

        # System Contexts
        android = softwareSystem "Android Device" {
            tags "Software System 3p"
        }

        ios = softwareSystem "iOS Device" {
            tags "Software System 3p"
        }

        www = softwareSystem "Internet" {
            tags "Software System 3p"
        }
    }

    views {
        systemContext android "AndroidSystem" {
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
}
