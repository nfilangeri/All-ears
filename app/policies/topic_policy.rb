class TopicPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def update?
    record.user == user
  end

  def destroy?
    user.admin || record.user == user
  end
end
