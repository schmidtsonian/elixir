defmodule Playground do
	# fibbonaci
	def fib(0), do: 1
	def fib(1), do: 1
	def fib(n) when n > 1 do
		fib(n-2) + fib(n-1)
	end
	def fib(n) when n < 0 do
		IO.puts "Fibonacci not supported"
	end

	# sum helper function
	def sum([]), do: 0
	def sum([head|tail]) do
		head + sum(tail)
	end

	#map helper function return collection
	def map([], func), do: []
	def map([head|tail], func) do
		[func.(head) | map(tail, func)]
	end
end