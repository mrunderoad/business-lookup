class BusinessesController < ApplicationController

  # def index
  #   name = params[:name]
    
  #   if name
  #     @businesses = Business.search_name(name).paginate(page: params[:page], per_page: 4)
  #   elsif !params[:page]
  #     @businesses =  Business.all
  #   else
  #     @businesses = Business.paginate(page: params[:page], per_page: 4)
  #   end
  #   json_response(@businesses)
  # end

  def index
    if params[:name]
      @businesses = Business.search_name(params[:name])
    elsif params[:kind]
      @businesses = Business.search_kind(params[:kind])
    elsif !params[:page]
      @businesses = Business.all
    else
      @businesses = Business.paginate(page: params[:page], per_page: 4)
    end
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business, :created)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update!(business_params)
      render status: 200, json: {
        message: "This Business has been updated!"
      }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    if @business.destroy
      render status: 200, json: {
        message: "This Business has been deleted!"
      }
    end
  end

  def random
    @businesses = Business.all.shuffle.sample
    json_response(@businesses)
  end

  def delete_all
    @businesses = Business.all
    if @businesses.delete_all
      render status: 200, json: {
        message: "All Businesses have been deleted!"
      }
    end
  end

  private

  def business_params
    params.permit(:name, :kind, :content)
  end
end