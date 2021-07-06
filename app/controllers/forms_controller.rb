class FormsController < ApplicationController
  def index
    @forms = Form.all
  end
  
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to forms_path
    else
      render :new
    end
  end

  def show
    @form = Form.find(params[:id])
    @forms = Form.all
  end

  def edit
    @form = Form.find(params[:id])
  end


  def update
    @form = Form.find(params[:id])
    if @form.update(form_params)
      redirect_to forms_path
    else
      render :edit
    end
  end

  def destroy
    @form = Form.find(params[:id])
    if @form.destroy
      redirect_to root_path
    end
  end
  
  private

  def form_params
    params.require(:form).permit(:title, :content, :start_time, :image).merge(user_id: current_user.id)
  end
  
end
