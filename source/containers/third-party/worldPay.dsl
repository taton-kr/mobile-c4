workspace extends ../../workspace.dsl {
    model {
        # WorldPay services
        !element worldPay {
            service = component "Service" {
                tags "Component 3p"
            }
        }
    }
}
