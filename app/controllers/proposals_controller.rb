class ProposalsController < ApplicationController

    before_action :load_sock
    # Endpoints
    # GET /socks/{:sock_id}/proposal/new
    def new
        @proposal = Proposal.new
        @socks = Sock.all
    end

    # POST /socks/{sock_id}/proposal
    def create
        @proposal = Proposal.new(sock_1_id: params[:sock_id], sock_2_id: params[:match_id])
        @proposal.save
        redirect_to @sock, notice: "Proposed match was successfully created."
    end

    private

    def load_sock
        @sock = Sock.find(params[:sock_id])
    end
end
