class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      # can :manage, :all ## remove this later when we have things better defined
      can :manage, :users
      can :manage, :roles
    end

    if user.has_role? :editor
      can :manage, Size
      can :manage, Race
      can :manage, Skill
      can :manage, FeatType
      can :manage, Feat
      can :manage, Spell
      can :manage, CharacterClass
    end

    if user.persisted? # user exists
       can :manage, User, :id => user.id
       can :read, User
       can :read, Campaign, :id => Campaign.with_role(:invited, user).pluck(:id)
       can :read, Campaign, :id => Campaign.with_role(:member, user).pluck(:id)
       can :manage, Campaign, user_id: user.id # you can manage your own
       can :manage, Character, user_id: user.id # you can manage your own
       can :manage, ClassLevel, :id => Character.where(user_id: user.id).pluck(:id)
       can :create, ClassLevel
       can :create, Character
       can :create, Campaign
    end
    
    # Anybody
    can :read, Campaign, public: true # only allow public viewing if public
    can :read, Character, public: true # only allow public viewing if public
    can :read, FeatType
    can :read, Feat
    can :read, CharacterClass
    can :read, Race
    can :read, Size
    can :read, ConsumableItem
    can :read, Skill
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
