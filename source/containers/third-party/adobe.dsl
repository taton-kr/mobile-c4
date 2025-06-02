workspace extends ../../workspace.dsl {
    model {
        # Adobe services
        !element adobe {
            analytics = component "Analytics Service" {
                tags "Component 3p"
            }
        }
    }
}
