defmodule Journal.Writer do

    use Timex
    
    @base_path = Path.expand("./vagrant/test/journal/.journal/")

    def save(message) do
        file = file_path
        
        File.write(file, message)
    end
    
    def file_path() do
        Path.join([@base_path, "#{Date.now(:secs)}.txt"])
        
    end
end 