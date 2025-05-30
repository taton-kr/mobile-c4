workspace extends ../../workspace.dsl {
    model {
        # LexisNexus services
        !element lexisNexus {
            service = component "Service" {
                tags "Component 3p"
            }
        }
    }
