workspace extends ../../workspace.dsl {
    model {
        # TransUnion services
        !element transUnion {
            service = component "Service" {
                tags "Component 3p"
            }
        }
    }
}
