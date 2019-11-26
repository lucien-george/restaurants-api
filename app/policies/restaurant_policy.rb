class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # user => current_user
    # record => @restaurant
    record.user == user
  end

  def create?
    user # => not nil
  end

  def destroy?
    update?
  end
end
