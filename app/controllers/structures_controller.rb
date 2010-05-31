class StructuresController < ApplicationController

  # DELETE /structures/1
  # DELETE /structures/1.xml
  def destroy
    @structure = Structure.find(params[:id])
    @structure.destroy

    respond_to do |format|
      format.html { redirect_to(structures_url) }
      format.xml  { head :ok }
    end
  end

end
