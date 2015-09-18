authorization do
  role :guest do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]
  end

  role :admin do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]
    has_permission_on [:articles, :comments, :users], :to => :manage
    
    has_permission_on :admin, :to => :index
  end

  role :user do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]

    has_permission_on :comments, :to => [:create, :delete] do
      if_attribute :user_id => is {user.id}
    end
  end

  role :author do
    has_permission_on :blog, :to => [:index, :article, :about, :contact]

    has_permission_on :comments, :to => [:create, :delete] do
      if_attribute :user_id => is {user.id}
    end
    
    has_permission_on :articles, :to => [:new]
    has_permission_on :articles, :to => [:create, :edit, :update, :delete] do
      if_attribute :user_id => is {user.id}
    end
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
