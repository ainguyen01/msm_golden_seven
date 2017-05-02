class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render("/actors/index.html.erb")
  end

  def show
    @actor= Actor.find(params[:id])
    render("/actors/show.html.erb")
  end

  def new_form
    render('actors/new_form')
  end

  def create_actor
    @actor=Actor.new
    @actor.name= params[:name]
    @actor.dob= params[:dob]
    @actor.bio= params[:bio]
    @actor.image_url= params[:image_url]
    @actor.save

    redirect_to("/actors")
  end

  def edit_form
    @actor= Actor.find(params[:id])
    render("actors/edit_form.html.erb")
  end

  def update_actor
    @actor= Actor.find(params[:id])
    @actor.name= params[:name]
    @actor.dob= params[:dob]
    @actor.bio= params[:bio]
    @actor.image_url= params[:image_url]
    @actor.save
    render("/actors/show.html.erb")
  end

  def delete_actor
    @actor= Actor.find(params[:id])
    @actor.destroy
    redirect_to("/actors")

  end

end
