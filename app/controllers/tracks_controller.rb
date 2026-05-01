# app/controllers/tracks_controller.rb
class TracksController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_track, only: %i[ show edit update destroy ]

  def index
    # do a query and throw it into an instance variable
    @tracks = Track.all
  end

  def show
  end

  def new
    @track = Track.new
  end

  # should make a button to create an entry
  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @track.update(track_params)
      redirect_to @track
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @track.destroy
    redirect_to tracks_path
  end

  private
    def set_track
      @track = Track.find(params[:id])
    end

    def track_params
      params.expect(track: [ :name, :album_id, :description, :featured_image,
:featured_track ])
    end
end
