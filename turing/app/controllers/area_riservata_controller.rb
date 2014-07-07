class AreaRiservataController < ApplicationController
  def registroElettronico
  end

  def comunicazioniPersonali
  end

  def login
  end

  def check_session
    if !session.has_key?(:user)
      redirect_to :controller => "area_riservata", :action => "login"
    end
  end

  def check_login
    if !(session.has_key?(:user) && params.has_key?(:user))
      user = User.where(:username => params[:user][:username])
      if user.count == 0
        flash[:message] = "<div class='message'>Non &egrave; stato trovato nessun utente con questo username</div>".html_safe
      elsif user[0].password != params[:user][:password]
        flash[:message] = "<div class='message'>La password inserita non &egrave; corretta</div>".html_safe
      else
        session[:user] = params[:user][:username]
        redirect_to :controller => "area_riservata", :action => "comunicazioniPersonali"
      end
    end
  end

  def log_out
    if session.has_key?(:user)
      session.delete(:user)
      flash[:message] = "<div class='message'>&Egrave; stato effettuato il logout</div>".html_safe
    end
  end

  def insert_votation

  end

  def read_votation

  end

  helper_method :check_session
  helper_method :check_login
  helper_method :log_out
  helper_method :insert_votation
  helper_method :read_votation
end
