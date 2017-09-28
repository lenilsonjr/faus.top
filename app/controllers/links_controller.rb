class LinksController < ApplicationController
  def create
    unless params[:link][:url].nil?
      @link = Link.new(url: params[:link][:url], created_by: request.remote_ip)
      
      unless @link.save
        render :nothing, status: :unprocessable_entity
      end
    else
      render :nothing, status: :unprocessable_entity
    end
  end

  def show
    @link = Link.find_by_code(params[:code])
    @link.update(use_count: @link.use_count.to_i + 1)

    redirect_to @link.url
  end
end
