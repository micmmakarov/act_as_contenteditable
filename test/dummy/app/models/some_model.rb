class SomeModel < ActiveRecord::Base
  attr_accessible :somedata1, :somedata2
  acts_as_contenteditable :except => :somedata1, :only => :somedata2

end
