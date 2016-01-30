defmodule CKITest do
    use ExUnit.Case
    doctest Journal
    
    import Journal.CLI, only: [parse_args: 1]
   
    test ":help returned by parsing -h and --help options" do
        assert parse_args(["--help"]) == :help
        assert parse_args(["-h"]) == :help
    end
end