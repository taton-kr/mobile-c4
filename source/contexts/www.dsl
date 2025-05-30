workspace extends ../workspace.dsl {
    model {
        # World Wide Web
        !element www {
            # First Party Services
            api = container "Kroger Mobile API"

            # Third Party Services
            adobe = container "Adobe Services" {
                tags "Container 3p"
            }

            akamai = container "Akamai Services" {
                tags "Container 3p"
            }

            amex = container "AmEx Services" {
                tags "Container 3p"
            }

            dynatrace = container "Dynatrace Services" {
                tags "Container 3p"
            }

            google = container "Google Services" {
                tags "Container 3p"
            }

            lexisNexus = container "LexisNexus Services" {
                tags "Container 3p"
            }

            microsoft = container "Microsoft Services" {
                tags "Container 3p"
            }

            pureRed = container "PureRed Services" {
                tags "Container 3p"
            }

            qualtrics = container "Qualtrics Services" {
                tags "Container 3p"
            }

            salesforce = container "Salesforce Services" {
                tags "Container 3p"
            }

            transUnion = container "TransUnion Services" {
                tags "Container 3p"
            }

            worldPay = container "WorldPay Services" {
                tags "Container 3p"
            }
        }
    }
