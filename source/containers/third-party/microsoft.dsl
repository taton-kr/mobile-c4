workspace extends ../../workspace.dsl {
    model {
        # Microsoft services
        !element microsoft {
            # Authentication
            msal = component "Authentication Service" {
                tags "Component 3p"
            }
        }
    }
