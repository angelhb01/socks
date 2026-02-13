class ProposalController < ApplicationController

    # Endpoints
    # GET /socks/{:sock_id}/proposal/new
    def new
        @match = Match.new
        @socks = Sock.all
    end
  
    # POST /socks/{sock_id}/proposal
    def create
      @match = Match.new(sock_1_id: params[:sock_id], sock_2_id: params[:match][:match_id])
      @match.save
      redirect_to @sock, notice: "Proposal was successfully created."
    end
end
