class Author
  attr_accessor :first_name, :last_name, :id, :items

  def initialize(first_name, last_name, id = Random.rand(1..1000))
    @first_name = first_name
    @last_name = last_name
    @id = id
    @items = []
  end

  def add_item(item)
    item.push(item)
    item.label = self
  end
end