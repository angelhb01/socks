class ProposalMailer < ApplicationMailer

  def new_proposal(proposal)
    @proposal = proposal
    @sock = proposal.sock
    @proposed_sock = proposal.proposed_sock

    recipient = @proposed_sock.owner.email

    mail(
      to: recipient,
      subject: "You have a new sock proposal!"
    )
  end
end
