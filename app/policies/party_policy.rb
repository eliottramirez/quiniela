class PartyPolicy < ApplicationPolicy
  attr_reader :user, :record

  def index?
    true
  end

  def show?
    user.member_of?(record) || user.super_admin?
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    user.admin_of?(record)
  end

  def edit?
    update?
  end

  def destroy?
    user.admin_of?(record)
  end

  class Scope < Scope
    def resolve
      user.parties
    end

    private

    attr_reader :user, :scope
  end
end
