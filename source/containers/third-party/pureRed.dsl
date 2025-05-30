workspace extends ../../workspace.dsl {
    model {
        # pureRed services
        !element pureRed {
            service = component "Service" {
                tags "Component 3p"
            }
        }
    }
