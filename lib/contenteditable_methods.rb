require 'active_record'

# ActsAsCommentable
module Michael
  module Acts #:nodoc:
    module Contenteditable #:nodoc:

      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def acts_as_contenteditable(*args)
          #comment_roles = args.to_a.flatten.compact.map(&:to_sym)
          #binding.pry
          attrs_list = []
          if args.size >= 1
            if args[0].has_key?(:only)
              attrs_list = args[0][:only]
            elsif args[0].has_key?(:except)
              attrs_list = attrs - args[0][:except]
            end
          else
            attrs_list =  accessible_attributes.to_a
          end
            binding.pry

            attrs_list = attrs_list - [""] if attrs_list.class == "Array"

          class_attribute :contenteditable_attrs
          self.contenteditable_attrs = attrs_list

          #class_attribute :comment_types
          #self.comment_types = (comment_roles.blank? ? [:comments] : comment_roles)

          #options = ((args.blank? or args[0].blank?) ? {} : args[0])



        end
      end
    end
  end
end

ActiveRecord::Base.send(:include, Michael::Acts::Contenteditable)
