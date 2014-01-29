class FilmsController < ApplicationController

  def index
    @films = Film.order(:name).page(params[:page])

    respond_to do |format|
      format.html
      format.json { render json: @films }
    end
  end

  def show
    @film = Film.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @film }
    end
  end

  def new
    @film = Film.new

    respond_to do |format|
      format.html
      format.json { render json: @film }
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def create
    @film = Film.new(params[:film])

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render json: @film, status: :created, location: @film }
      else
        format.html { render action: "new" }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @film = Film.find(params[:id])

    respond_to do |format|
      if @film.update_attributes(params[:film])
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    respond_to do |format|
      format.html { redirect_to films_url }
      format.json { head :no_content }
    end
  end

end
