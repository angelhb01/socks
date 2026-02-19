module SocksHelper
    def is_matched_class sock
        if sock.matched?
            "matched"
        end
    end

    def propose_match sock
        sock_elements = []
        if sock.matched?
            match = [sock.match.sock_1_id, sock.match.sock_2_id]
            for sock_id in match do
                if sock_id == sock.id and match.index(sock_id) == 0
                    return match[1]
                else
                    return match[0]
                end
            end
        else
            return "No Incoming Proposal"
        end
    end
end
