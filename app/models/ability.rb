class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in) shorthand for checking if a variable exists, and if not assign it to something else
    can :manage, User, id: user.id
  end
end
