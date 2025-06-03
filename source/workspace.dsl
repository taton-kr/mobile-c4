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
                color #1f1f1f
                shape RoundedBox
            }
            element "Person" {
                background #1f1f1f
                shape person
            }
            element "Software System" {
                background #81C5F4
            }
            element "Container" {
                background #2874C1
            }
            element "Component" {
                background #074085
            }
            element "Software System 3p" {
                background #FFAC02
            }
            element "Container 3p" {
                background #C54E04
            }
            element "Component 3p" {
                background #732102
            }
        }
    }
}
