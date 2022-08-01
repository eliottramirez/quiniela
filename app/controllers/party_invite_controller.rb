class PartyInviteController < ApplicationController
  def send_invite
    if params[:to_email].present?
      PartyInviteJob.perform_later(invite_params)
      redirect_to party_path(params[:party]), notice: "Invitación enviada."
    else
      redirect_to party_path(params[:party]), alert: "El campo \"Email\" no puede ir en blanco."
    end
  end

  private

  def invite_params
    params.permit(:from_user, :party, :party_name, :sharing_code, :to_email)
  end
end
