defmodule Journal.Writer do

    use Timex
    
    @base_path Application.get_env(:journal, :base_path)

    def save(message) do
        
        if !File.exists?(@base_path) do
            File.mkdir(@base_path)
        end
        
        file = file_path
        File.write(file, message)
            |> handle_response(file)
    end
    
    def file_path() do
        Path.join([@base_path, "#{Date.now(:secs)}.txt"]) 
    end
    
    defp handle_response(:ok, file_path) do
        {:ok, file_path}
    end
    
    defp handle_response({:error, _}, _) do
        {:error, "something is baaaad!"}
    end
end 