Rails.configuration.stripe = {
  publishable_key: "pk_live_0gnegthdog98gDfM9PK8l3kd",
  secret_key:      "sk_live_iDGjvwl0tSByVnXUwUkwBy90"

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]















