workspace extends ../../workspace.dsl {
    model {
        # Google services
        !element google {
            firebaseAnalytics = component "Firebase Analytics Service" {
                tags "Component 3p"
            }
        }
    }
}
