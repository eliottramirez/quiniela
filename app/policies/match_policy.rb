class MatchPolicy < ApplicationPolicy
  attr_reader :user, :record

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.super_admin?
  end

  def new?
    create?
  end

  def update?
    user.super_admin?
  end

  def edit?
    update?
  end

  def destroy?
    user.super_admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
