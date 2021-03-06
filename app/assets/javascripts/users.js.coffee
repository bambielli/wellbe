# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  card_holder.setupForm()

card_holder =
  setupForm: ->
    $('#new_card_holder').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#card_number').length
        card_holder.processCard()
        false
      else
        true
  
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    Stripe.createToken(card, card_holder.handleStripeResponse)
  
  handleStripeResponse: (status, response) ->
    if status == 200
      alert(response.id)
    else
      $('#stripe_error').text(response.error.message)
      $('input[type=submit]').attr('disabled', false)