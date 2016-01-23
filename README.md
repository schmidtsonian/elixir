# elixir

Need ubuntu_1504_elixir.box

**> vagrant up**

**> vagrant ssh**


**> vagrant halt**

interactive mode elixir

> iex


//aritmethic

> 1+2


//atom

> :success

> {:ok, "JSON"}


//elpers, pipe operator

> Enum.map([1,2,3,4], fn(n) -> n*2 end)

> [2,4,6,8]


> [1,2,3,4] |> Enum.map(&(&1*2))

> [2,4,6,8]


> [1,2,3,4] |> Enum.map(&(&1*2)) |> Enum.reduce(0, &(&1+&2))

> 20


> [1,2,3,4] |> Enum.map(&(&1*2)) |> Enum.reduce(0, fn(acc,val) -> acc + val end)

> 20

//compile
-> iex
> c "Playground.ex"

//fibonacci
> Playground.fib(0)
> Playground.fib(1)
> Playground.fib(10)


//sum
> Playground.sum([1,2,3,4])
10

> [head|tail] = [1,2,3,4]
[1,2,3,4]

> head
1

> tail
[1,2,3,4]

> Playground.sum([])
0

//map function return collection
> Playground.map([1,2,3,4], &(&1*2))

//FizzBuzz
> Playground.print(1)
1

> Playground.print(2)
2

> Playground.print(3)
"Fizz"

> Playground.print(4)
4

> Playground.print(5)
"Buzz"

> Playground.print(15)
"FizzBuzz"