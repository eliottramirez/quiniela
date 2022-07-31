class PoolPolicy < ApplicationPolicy
  attr_reader :user, :record

  def index?
    true
  end

  def show?
    user.owner_of?(record) || user.super_admin?
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    user.owner_of?(record)
  end

  def edit?
    update?
  end

  def destroy?
    user.owner_of?(record) || user.admin_of?(record.party)
  end

  class Scope < Scope
    def resolve
      if user.super_admin?
        Pool.all
      else
        user.pools
      end
    end

    private

    attr_reader :user, :scope
  end
end
