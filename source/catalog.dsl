workspace "System Catalog" "Description" {

    !identifiers heirarchical

    model {
        # Personas
        author = person "Content Author"
        guest = person "Guest"
        patient = person "Patient"
        shopper = person "Shopper"

        # First Party Systems
        kroger = softwareSystem "Kroger eCommerce System"

        # Third Party Systems
        adobe = softwareSystem "Adobe Services"
        akamai = softwareSystem "Akamai Services"
        amex = softwareSystem "AmEx Services"
        dynatrace = softwareSystem "Dynatrace Services"
        google = softwareSystem "Google Services"
        lexisNexus = softwareSystem "LexisNexus Services"
        microsoft = softwareSystem "Microsoft Services"
        pureRed = softwareSystem "PureRed Services"
        qualtrics = softwareSystem "Qualtrics Services"
        salesforce = softwareSystem "Salesforce Services"
        transUnion = softwareSystem "TransUnion Services"
        worldPay = softwareSystem "WorldPay Services"
    }

    views {
        systemContext kroger "System Context" {
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