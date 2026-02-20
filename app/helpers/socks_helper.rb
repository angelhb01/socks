module SocksHelper
    def is_matched_class sock
        if sock.matched?
            "matched"
        end
    end

    def propose_match sock
        if sock.has_proposals?
            proposal = [sock.proposals.sock_1_id, sock.proposals.sock_2_id]
            for sock_id in proposal do
                if sock_id == sock.id and proposals.index(sock_id) == 0
                    return proposal[1]
                else
                    return proposal[0]
                end
            end
        else
            return "No Incoming Proposal"
        end
    end
end
