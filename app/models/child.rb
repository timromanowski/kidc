class Child < User
  belongs_to :parent, :class_name => 'Parent'
end