authorization do
	role :standard do
		has_permission_on :fdbtabs, :to => [:index,:show]
		 #if_attribute :user => is (user)
	 end

 	role :admin do
	 	has_permission_on :fdbtabs, :to => [:index,:show,:edit,:update]
	end
 
 	role :guest do
		has_permission_on :fdbtabs, :to => [:index,:show]
	 end
 end
 