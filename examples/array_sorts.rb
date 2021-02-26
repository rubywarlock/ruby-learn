arr = [12, 30, 45, 9, 3, 15, 2, 8]

def sort(arr, new_arr)
  counter = 1

  while arr.size > counter
    if arr[0] >= arr[counter]
      first = arr[0]
      second = arr[counter]

      arr[0] = second
      arr[counter] = first
    end

    counter += 1
  end

  if arr.size > 1
    new_arr.push(arr.shift)
    new_arr = sort(arr, new_arr)
  else
    new_arr.push(arr.shift)
  end

  return new_arr
end

res = sort(arr, [])

print c

#

=begin
autors
id: integer
book_id: integer
name: string

books
id: integer
name: string
genre_id: integer

genres
id: integer
name: string


Books.joins(:authors, :genre).where(genre: "fantasy").group('books.id').having('count(authors.id) > ?', 1)
Post.joins(:comments).group('posts.id').having('count(comments.id) > ?', 1)
Genre.joins(:books, :authors).where(genre: "fantasy").group('genre.id').having('count(authors.id) > ?', 1)
=end


