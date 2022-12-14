class ArtworksController < ApplicationController

    def index
        if params.has_key?(:user_id)
            @artworks = Artwork.where(artist_id: params[:user_id])
        else
            @artworks = Artwork.all
        end
        render json: @artworks
    end

    def create 
        artwork = Artwork.new(artwork_params)
        if artwork.save
        render json: user
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])

        if @artwork.update(user_params)
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def destroy
        @artwork = User.find(params[:id])

        @artwork.destroy

        render json: @artwork
    end

    private
    
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

end
