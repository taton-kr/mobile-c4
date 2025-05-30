workspace extends ../../workspace.dsl {
    model {
        !element api {
            clickstream = component "Clickstream"
            features = component "Mobile Features"
        }
    }
}