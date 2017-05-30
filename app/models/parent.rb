class Parent < User
  # Returns all children under this parent
  has_many :children, :class_name => 'Child', :foreign_key => :parent_id
end