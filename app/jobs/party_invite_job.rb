class PartyInviteJob < ApplicationJob
  queue_as :default

  def perform(params)
    PartyMailer.with(params).send_invite.deliver_now
  end
end
