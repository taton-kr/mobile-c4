workspace extends ../SoftwareSystem.dsl {

    model {
        # Microsoft services
        !element microsoft {
            tags "Software System 3p"

            # Azure
            azure = container "Azure Services" {
                tags "Container 3p"

                # Authentication
                azureMsal = component "Authentication Service" {
                    tags "Component 3p"
                }
            }
        }
    }
