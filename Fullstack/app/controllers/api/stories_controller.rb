class Api::StoriesController < ApplicationController

  before_action :require_logged_in, only: [:create, :edit, :update, :destroy]

  def new
    @story = Story.new
    render :index
  end

  def create
    @story = Story.new(story_params)
    # optional
    # if (params[:story][:photo])
    #     @story.photo = params[:story][:photo]
    # else
      # @story.photo = sfasdfsadf? File.open(io: 'app/assets/images/____.jpg')
    # end

    @story.author_id = current_user.id
    if @story.save!
      render :show
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def show
    @story = Story.find(params[:id])
    if @story
      render :show
    else
      render json: ["Story doen't exist"], status: 404
    end
  end

  def index
    @stories = Story.all
  end

  def edit
    @story = Story.find(params[:id])
    render :edit
  end

  def update
    @story = current_user.authored_stories.find(params[:story][:id])
    if @story.update_attributes(story_params)
      render :show
    else
      render json: @story.errors.full_messages, status: 422
      render :edit
    end
  end

  def destroy
    @story = current_user.stories.where(id: params[:id])
    if @story
      @story.destroy
      render :show
    else
      render json: ["Can't destroy this story"], status: 401
    end

  end

  def story_params
    params.require(:story).permit(:title, :content, :subtitle, :photo)
  end
end
