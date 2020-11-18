# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
    def initialize(emails)
        @emailAddresses = emails
    end
    attr_reader :emailAddresses

    def parse
        result = @emailAddresses.split(/[, ]/)
        result.delete_if {|element| element == ""}
        result.uniq
    end
end