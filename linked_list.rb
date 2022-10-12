class Node
  attr_accessor :data, :next_node

  def initialize(data=nil)
    @data = data
    @next_node = nil
  end
end

class Linked_List

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    if @head == nil
      @head = data
      @tail = data
    else
      @tail.next_node = data
      @tail = data
    end
  end

  def prepend(data)
    if @head == nil
      @head = data
      @tail = data
    else
      data.next_node = @head
      @head = data
    end
  end

  def size
    size = 0
    node = @head
    until node == nil
      size += 1
      node = node.next_node
    end
    puts size
  end

  def to_s
    node = @head
    out = ''
    until node == nil
      out += "#{node.data} => "
      node = node.next_node
    end
    puts out
  end

  def head
    puts @head.data
  end

  def tail
    puts @tail.data
  end

  def at(index)
    node = @head
    x = 0
    until node == nil
      @index = x
      if @index == index
        puts node.data
      end
      node = node.next_node
      x += 1
    end
  end

  def pop
    node = @head
    until node.next_node == @tail
      node = node.next_node
      if node.next_node == nil
        break
      end
    end
    @tail = node
    @tail.next_node = nil
  end

  def contains?(value)
    node = @head
    x = false
    until node == nil
      if node.data == value
        x = true
      end
      node = node.next_node
    end
    puts x
  end

  def find(value)
    node = @head
    x = 0
    until node == nil
      if node.data == value
        puts x
        break
      end
      node = node.next_node
      x += 1
    end
    if node == nil
      puts 'nil'
    end
  end
end

node_one = Node.new('cat')
node_two = Node.new('dog')
node_three = Node.new('fish')
node_four = Node.new('frog')

list = Linked_List.new

list.append(node_two)
list.append(node_one)
list.append(node_three)
list.prepend(node_four)

list.to_s
list.size
list.head
list.tail
list.pop
list.to_s
list.contains?('jacob')
list.contains?('dog')
list.find('dog')
list.find('d')