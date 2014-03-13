class SignupCountdown
  constructor: ->
    @button = $(".js-user-signup")
    @button.click (event) ->
      event.preventDefault()
      $.ajax({
        type: "POST"
        url: @button.closest("form").action
        data:
          full_name: $(".js-user-full_name").val()
          email: $(".js-user-email").val()
      })
      false

window.signup_countdown = new SignupCountdown()