class Api::V1::FoldersController < ApplicationController
    def index
        folders = Folder.all 
        render json: folders
    end

    def show
        folder = Folder.find(params[:id])
        render json: folder
    end

    def create
        folder = Folder.create(folder_params)
        render json: folder
    end

    def destroy
        folder = Folder.find(params[:id])
        folder.destroy 
        
    end

    private 

    def folder_params
        params.permit(:name,:folder_id,:user_id)
    end
end
