module SocksHelper
    def displayMatches(sock_id)
        begin
            @matches.each do |match|
                does_match = match.sock_1_id == sock_id
                if does_match
                    return "There is a match"
                end
            end
            return "No match"

        rescue StandardError => e
            return e
        end
    end
end
