#
hash = { a: 'b', c: 'd' }

# puts hash[:a]
# puts hash[:c]

nested_hash = {
  name: 'Dan',
  address: {
    city: 'Brooklyn',
    state: 'New York'
    zip_code: {
      five_digit: '11201',
      four_digit: '4562'
    }
  }
}

puts nested_hash

