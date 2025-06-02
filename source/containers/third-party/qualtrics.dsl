workspace extends ../../workspace.dsl {
    model {
        # Qualtrics services
        !element qualtrics {
            survey = component "Survey Service" {
                tags "Component 3p"
            }
        }
    }
}
