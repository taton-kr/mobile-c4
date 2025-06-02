workspace extends ../../workspace.dsl {
    model {
        # Salesforce services
        !element salesforce {
            push = component "Push Service" {
                tags "Component 3p"
            }
        }
    }
}
