workspace extends ../../workspace.dsl {
    model {
        # Dynatrace services
        !element dynatrace {
            telemetry = container "Telemetry Service" {
                tags "Component 3p"
            }
        }
    }
}
