provider "azurerm" {
  features {}
  subscription_id            = local.secondary_subscription_id   # in our example we'll point to a different subscription than our default azurerm provider
  skip_provider_registration = "true"                            # skipping registration in the case that the principal or user doesn't have permissions; this assumes that the provider registration is already registered on the subscription
  alias                      = "secondary"                       # to use this configuration, we will call `azurerm.secondary`
}