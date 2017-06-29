class NotesController < ApplicationController
  def create
    @asset = Asset.find(params[:asset_id])
    @note = @asset.notes.create(note_params)
    redirect_to asset_path(@asset)
  end

  def destroy
    @asset = Asset.find(params[:asset_id])
    @note = @asset.notes.find(params[:id])
    @note.destroy
    redirect_to asset_path(@asset)
  end
 
  private
    def note_params
      params.require(:note).permit(:body)
    end
end
