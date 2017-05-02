Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/', {:controller => 'movies', :action => 'index' })
  get('/index', {:controller => 'movies', :action => 'index' })

  get('/movies/new_form', {:controller => 'movies', :action => 'new_form' })
  get('/create_movie', {:controller => 'movies', :action => 'create_movie' })

  get('/movies/:id/edit_form', {:controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', {:controller => 'movies', :action => 'update_movie' })

  get('/delete_movie/:id', {:controller => 'movies', :action => 'delete_movie' })

  get('/movies/:id', {:controller => 'movies', :action => 'show' })


get('/actors', {:controller => 'actors', :action => 'index' })
get('/actors/new_form', {:controller => 'actors', :action => 'new_form' })

get('/actors/new_form', {:controller => 'actors', :action => 'new_form' })
get('/create_actor', {:controller => 'actors', :action => 'create_actor' })

get('/actors/:id/edit_form', {:controller => 'actors', :action => 'edit_form' })
get('/update_actor/:id', {:controller => 'actors', :action => 'update_actor' })

get('/delete_actor/:id', {:controller => 'actors', :action => 'delete_actor' })

get('/actors/:id', {:controller => 'actors', :action => 'show' })


get('/directors', {:controller => 'directors', :action => 'index' })
get('/directors/new_form', {:controller => 'directors', :action => 'new_form' })

get('/directors/new_form', {:controller => 'directors', :action => 'new_form' })
get('/create_director', {:controller => 'directors', :action => 'create_director' })

get('/directors/:id/edit_form', {:controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', {:controller => 'directors', :action => 'update_director' })

get('/delete_director/:id', {:controller => 'directors', :action => 'delete_director' })

get('/directors/:id', {:controller => 'directors', :action => 'show' })



end
