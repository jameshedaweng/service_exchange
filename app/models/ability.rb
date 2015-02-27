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
      if @user.has_role? :admin
        can :manage, :all
      else
        can :create, Power
        can :manage, Power, :user_id => @user.id
      end

      cannot :like, Power do |p|
        p.liked_by?(@user)
      end
      cannot :unlike, Power do |p|
        !p.liked_by?(@user)
      end
      cannot [:like, :unlike], Power, :user_id => @user.id
    end
  end
end
