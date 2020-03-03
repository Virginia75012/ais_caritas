class FlatPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user || user.admin
  end

  class Scope < Scope
    def resolve
      if user.admin
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
end
