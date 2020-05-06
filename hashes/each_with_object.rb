obj = {
  one: [
    first: {one: "first", two: "second", three: "third"},
    second: {one: "first", two: "second", three: "third"},
    third: {one: "first", two: "second", three: "third"},
  ],
  two: {
    first: {one: "first", two: "second", three: "third"},
    second: {one: "first", two: "second", three: "third"},
    third: {one: "first", two: "second", three: "third"},
  },
  three: {
    first: {one: "first", two: "second", three: "third"},
    second: {one: "first", two: "second", three: "third"},
    third: {one: "first", two: "second", three: "third"},
  },
}

obj.each_with_object({}) do |(a, b),i|
  i[a] = "#{a}, #{b}, #{i}"
end