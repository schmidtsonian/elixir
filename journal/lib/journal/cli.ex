defmodule Journal.CLI do
   def main(argv) do
    argv
        |> parse_args
        |> process
   end 
   
   def parse_args(argv) do
    options = OptionParser.parse(argv,switches: [help: :boolean], aliases: [h: :help])
    case options do
        {[help: true], _, _} -> :help
        {_, [message], _} -> {message}
        _ -> :help
    end
   end
   
   def process(:help) do
    
    IO.puts """
    usage:  journal --help returns this message
            journal -h
            journal <message>
            journal --from <yesterday|today>
    """
    System.halt(0)
   end
   
   def process({message}) do
    
    Journal.Writter.save(message)
        |> proccess_file
   end
   
   def proccess_file({:ok, file_path}) do
    IO.puts "Journal successfull saved at #{Path.basename(file_path)}"
    System.halt(0)
   end
   
   def proccess_file({:error, reason}) do
    IO.puts "Something wrong happend"
    IO.puts "Error: #{reason}"
    System.halt(0)
    
   end
end