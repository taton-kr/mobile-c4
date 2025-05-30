workspace extends ../../workspace.dsl {
    model {
        # Amex services
        !element amex {
            fraud = component "Fraud Service" {
                tags "Component 3p"
            }
        }
    }
