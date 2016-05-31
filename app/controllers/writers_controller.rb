class WritersController < ApplicationController

  def choose
    @writer = Writer.find(params[:id])
    @skills = @writer.skills_list.map{|s|"##{s}"}.join(', ')
    respond_to do |format|
      format.js
    end
  end
end
