module MethodsPracticeHelpers

  def image_tag(source, alternate_text)
    # Generate an image tag with the given source and the classes
    %(
      <img class="img-responsive img-thumbnail" src="#{source}" alt="#{alternate_text}" height="42" width="42">
    )
    # "img-responsive" and "img-thumbnail". The image should also have an alt
    # attribute with the contents of alternate_text..
  end

  def bootstrap_alert(message, type='info')
    %(
    <div class="alert alert-#{type} alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      #{message}
    </div>    )
  end

  def current_date_and_time
    Time.now.strftime("%B %-d, %Y at %-l:%M%P")
    # Give the current date and time, in the format: "February 6, 2015 at 4:25pm"
    # Time.now.strftime is a great method chain you can use for this purpose.
    # See how to use it at: http://apidock.com/ruby/Time/strftime
  end

end
