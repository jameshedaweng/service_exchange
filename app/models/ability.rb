class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user
    logged_in_abilities
    @user ||= User.new
    can :read, :all
    can :discover, Power
    can :gallery, Category
  end

  private

  def logged_in_abilities
    if @user
        can :like, Power, Power.where() do |p|
          
        end
        can :unlike, Power
      if @user.has_role? :admin
        can :manage, :all
      else
        can :create, Power
        can :manage, Power, :user_id => @user.id
      end
    end
  end
end
