module DeviseHelper

  def devise_error_messages_customize
    return '' if resource.errors.empty?

    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-error">
      <button type="button" class="close" data-dismiss="alert">x</button>
      #{sentence}
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages_for_sign_up!
    devise_error_messages_customize
  end

  def devise_error_messages_for_sign_in!
    devise_error_messages_customize
  end


  def devise_error_messages_for_forgot_password!
    devise_error_messages_customize
  end


  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation">
      <h2>#{sentence}</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

end
