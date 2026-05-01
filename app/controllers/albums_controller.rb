# app/controllers/albums_controller.rb
class AlbumsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_album, only: %i[ show edit update destroy ]

  def index
    @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to @album
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy
    redirect_to albums_path
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.expect(album: [ :name, :kind, :description, :featured_image ])
    end
end
