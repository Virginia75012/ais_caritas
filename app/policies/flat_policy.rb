class FlatPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

  def show?
    user.admin? == true
  end

  def create?
    true
  end

  def update?
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end

  def validate?
    user.admin
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
