class EmailAddressParser 
    attr_accessor :email_addresses

    def initialize(email_addresses)
       @email_addresses = email_addresses
    end

    def parse
        # ,? - parses CVS emails eg(x,y,z are comma-delimited)
        # \s - parses space delimited emails eg (x y z are space-delimited)
        # split- splits the given emails(strings) into an array of substrings
        # uniq removes duplicate emails
        @parsed = email_addresses.split(/,?\s/).uniq
        @parsed
    end
end