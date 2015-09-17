authorization do
  role :guest do
    # add permissions for guests here, e.g.
    has_permission_on :blog, :to => [:index, :article, :about, :contact]
  end

  role :admin do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]
    has_permission_on [:articles, :comments], :to => :manage
    
    has_permission_on :admin, :to => :index
  end

  role :user do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]

    has_permission_on :comments, :to => [:create, :delete] do
      if_attribute :user_id => is {user.id}
    end

    # has_permission_on :products_orders, :to => [:show, :create, :update, :delete] do
    #   if_attribute :order => { :user_id => is { user.id } }
    # end
  end

  role :author do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]

    # has_permission_on :orders, :to => [:show, :create, :update, :delete] do
    #   if_attribute :user_id => is {user.id}
    # end

    # has_permission_on :products_orders, :to => [:show, :create, :update, :delete] do
    #   if_attribute :order => { :user_id => is { user.id } }
    # end
  end
end

privileges do
  # default privilege hierarchies to facilitate RESTful Rails apps
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end
