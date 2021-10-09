#
# @example
# class UpsertUserService < ApplicationService
#   attribute :user
#   validates :user, presence: true
#
#   def execute
#     # code...
#   end
# end
#
# > response = UpsertUserService.new(user: current_user).invoke!
#

class ApplicationService
  include ActiveModel::Model
  include ActiveModel::Attributes

  def invoke
    before
    ret = if valid?
            execute
          else
            false
          end
    after
    ret
  end

  def invoke!
    invoke ? self : raise(ServiceNotExecuted)
  end

  def before; end

  def after; end
end
