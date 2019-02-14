Rails.configuration.stripe = {
  publishable_key: "pk_live_L4Sp2lyU6A17gMe6zT1zrPRD

",

  secret_key:      "sk_live_GlpnjOwucvsMLjD0wqATFcKt"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
