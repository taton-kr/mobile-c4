# iOS Relationships
shopper -> eCommerce.ios.storePayments "Places order"
eCommerce.ios.storePayments -> eCommerce.ios.wallet "Selects payment method"
eCommerce.ios.wallet -> eCommerce.ios.tmx "Verifies payment method"
eCommerce.ios.tmx -> lexisNexus.tms "Asks LexisNexus to verify"
