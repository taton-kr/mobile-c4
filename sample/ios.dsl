workspace extends workspace.dsl {

    model {

        element !ios {
            storePayments = component "Store Payments Package"
            wallet = component "Wallet Package"
            tmx = component "TMXProfiling Package"
        }

        # Relationships
        shopper -> eCommerce.ios.storePayments "Places order"
        eCommerce.ios.storePayments -> eCommerce.ios.wallet "Selects payment method"
        eCommerce.ios.wallet -> eCommerce.ios.tmx "Verifies payment method"
        eCommerce.ios.tmx -> lexisNexus.tms "Asks LexisNexus to verify"
    }
}