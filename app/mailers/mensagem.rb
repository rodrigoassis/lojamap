class Mensagem < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "rodrigo.assis.fialho@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Contato] #{message[:nomeContato]}")
  end

end
