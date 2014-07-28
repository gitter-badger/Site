class Ability
  include CanCan::Ability

  def initialize(admin)
    admin ||= Admin.new
     if admin.has_role? :admin
        can :manage, :all
     else
        can :read, :all
     end
  end
end
