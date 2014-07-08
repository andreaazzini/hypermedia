class AreaRiservataController < ApplicationController
  def registroElettronico
  end

  def comunicazioniPersonali
  end

  def gestioneRecord
  end

  def docente
    if params.has_key?(:docente)
      if params[:docente][:azione] == "nuovo"
        if params[:docente][:nome] == "" || params[:docente][:cognome] == "" || params[:docente][:curriculum] == ""
          flash[:message] = "Tutti i moduli devono essere riempiti"
          params[:docente] = nil
        else
          Teacher.create(:name => params[:docente][:nome], :surname => params[:docente][:cognome], :curriculum => params[:docente][:curriculum])
          flash[:message] = "Docente inserito correttamente"
          redirect_to :controller => "area_riservata", :action => "gestioneRecord"
        end
      elsif params[:docente][:azione] == "modifica"
        if params[:docente][:nome] == "" || params[:docente][:cognome] == "" || params[:docente][:curriculum] == ""
          flash[:message] = "Tutti i moduli devono essere riempiti"
          params[:docente] = nil
        else
          teacher = Teacher.find_by_id(params[:docente][:id])
          teacher.update(:name => params[:docente][:nome], :surname => params[:docente][:cognome], :curriculum => params[:docente][:curriculum])
          flash[:message] = "Docente aggiornato correttamente"
          redirect_to :controller => "area_riservata", :action => "gestioneRecord"
        end
      elsif params[:docente][:azione] == "cancella"
        teacher = Teacher.find_by_id(params[:docente][:id])
        Teacher.destroy(teacher)
        flash[:message] = "Docente cancellato correttamente"
        redirect_to :controller => "area_riservata", :action => "gestioneRecord"
      end
    end
  end

  def login
  end

  def check_session
    if !session.has_key?(:user)
      redirect_to :controller => "area_riservata", :action => "login"
    else
      type_user = User.where(:username => session[:user])[0].type_user
      case type_user
        when 0
          if params[:action] != "gestioneRecord" && params[:action] != "docente" && params[:action] != "classe"
            redirect_to :controller => "area_riservata", :action => "gestioneRecord"
          end
        when 1
          if params[:action] != "registroElettronico" && params[:action] != "comunicazioniPersonali"
            redirect_to :controller => "area_riservata", :action => "comunicazioniPersonali"
          end
        when 2
          if params[:action] != "registroElettronico" && params[:action] != "comunicazioniPersonali"
            redirect_to :controller => "area_riservata", :action => "comunicazioniPersonali"
          end
      end
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

  helper_method :check_session
  helper_method :check_login
  helper_method :log_out

end