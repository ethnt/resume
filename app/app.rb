class Resume < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  configure :development do
    register CompassInitializer
  end
end
