workspace extends ../../workspace.dsl {
    model {
        # Akamai services
        !element akamai {
            edge = component "Edge Service" {
                tags "Component 3p"
            }
        }
    }
}
