class BusinessApplicationsController < ApplicationController

  def index
    @business_application = BusinessApplication.all
  end

  def allapprovedapplications
    @business_application = BusinessApplication.where(:status => 1)
  end

  def new
    @business_application = BusinessApplication.new
  end

  def show
    @business_application = BusinessApplication.find(params[:id])
  end

  def edit
    @business_application = BusinessApplication.find(params[:id])
  end

  def update
    @business_application = BusinessApplication.find(params[:id])
    respond_to do |format|
      if @business_application.update(business_application_params)
        flash[:success] = "Application updated!" 
        format.html { redirect_to root_path}
        format.json { head :no_content }
      else
        flash.now[:danger] = "Failed to update application"
        render :edit 
      end
    end
  end

  def create
    @business_application = BusinessApplication.new(business_application_params)

    if @business_application.save   
      flash[:success] = "Application created!" 
      redirect_to root_path
    else
      flash.now[:danger] = "Failed to create application"
      render :new
    end
  end


  def destroy  
    @business_application = BusinessApplication.find(params[:id])
    respond_to do |format|
      if @business_application.destroy
        flash[:success] = "Application deleted!" 
        format.html { redirect_to root_path}
        format.json { head :no_content }
      else
        flash.now[:danger] = "Failed to delete applicationn"
        render :edit 
      end
    end
  end

  private 
  
  def business_application_params
    params.require(:business_application).permit(:title,:about,:status)
  end 

end
