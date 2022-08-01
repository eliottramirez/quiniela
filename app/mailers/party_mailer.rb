class PartyMailer < ApplicationMailer
  default from: "quiniela@eliottramirez.dev"

  def send_invite
    @from_user = params[:from_user]
    @party = params[:party]
    @party_name = params[:party_name]
    @sharing_code = params[:sharing_code]
    @to_email = params[:to_email]

    mail(to: @to_email, subject: "#{@from_user} te ha invitado a su quiniela.")
  end
end
