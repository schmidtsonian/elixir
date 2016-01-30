defmodule Journal.Writer do

    @base_path = Path.expand("./vagrant/test/journal/.journal/")

    def save(message) do
        File.write(Path.join([{@base_path},"/123123.txt"]), message)
    end
end 