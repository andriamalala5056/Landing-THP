class PagesController < ApplicationController
  def home
  end
  def soumettre
    visiteur = Visiteur.find_by(email: params['soumettre'].downcase)
    if visiteur
    #visiteur existe
      redirect_to "https://www.thehackingproject.org", notice: "Merci d'avoir visité notre site"
    else
      @visiteur = Visiteur.create(email: params['soumettre'].downcase)
      UserMailer.welcome_email(@visiteur).deliver_now
      redirect_to "https://www.thehackingproject.org", success: "Merci d'avoir visité notre site"
    end
  end
end
