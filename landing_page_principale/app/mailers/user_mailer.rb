class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def welcome_email(visiteur)
        @visiteur = visiteur
        mail(to: @visiteur.email , subject: 'Welcome! Please, confirm your registration')
    end
end
