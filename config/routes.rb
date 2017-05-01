Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/', {:controller => 'movies', :action => 'index' })
  get('/index', {:controller => 'movies', :action => 'index' })

  get('/movies/:id', {:controller => 'movies', :action => 'show' })


  get('/movies/new_form', {:controller => 'movies', :action => 'new_form' })
  get('/create_movie', {:controller => 'movies', :action => 'create_movie' })

  get('/movies/:id/edit_form', {:controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', {:controller => 'movies', :action => 'update_movie' })

  get('/delete_movie/:id', {:controller => 'movies', :action => 'delete_movie' })

end
