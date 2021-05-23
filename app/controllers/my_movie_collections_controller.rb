class MyMovieCollectionsController < ApplicationController
  before_action :set_my_movie_collection, only: %i[ show edit update destroy ]

  # GET /my_movie_collections or /my_movie_collections.json
  def index
    @my_movie_collections = MyMovieCollection.all
  end

  # GET /my_movie_collections/1 or /my_movie_collections/1.json
  def show
  end

  # GET /my_movie_collections/new
  def new
    @my_movie_collection = MyMovieCollection.new
  end

  # GET /my_movie_collections/1/edit
  def edit
  end

  # POST /my_movie_collections or /my_movie_collections.json
  def create
    @my_movie_collection = MyMovieCollection.new(my_movie_collection_params)

    respond_to do |format|
      if @my_movie_collection.save
        format.html { redirect_to @my_movie_collection, notice: "My movie collection was successfully created." }
        format.json { render :show, status: :created, location: @my_movie_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_movie_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_movie_collections/1 or /my_movie_collections/1.json
  def update
    respond_to do |format|
      if @my_movie_collection.update(my_movie_collection_params)
        format.html { redirect_to @my_movie_collection, notice: "My movie collection was successfully updated." }
        format.json { render :show, status: :ok, location: @my_movie_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_movie_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_movie_collections/1 or /my_movie_collections/1.json
  def destroy
    @my_movie_collection.destroy
    respond_to do |format|
      format.html { redirect_to my_movie_collections_url, notice: "My movie collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_movie_collection
      @my_movie_collection = MyMovieCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_movie_collection_params
      params.require(:my_movie_collection).permit(:title, :rating, :year, :director, :lenght, :description)
    end
end
