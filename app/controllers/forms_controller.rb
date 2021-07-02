class FormsController < ApplicationController
  def index
    @forms = Form.all
  end
  
  def new
    @form = Form.new
  end

  def create
    @form = Form.create(form_params)
    if @form.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @form = Form.find(params[:id])
  end


  private
  def form_params
    params.require(:form).permit(:title, :content, :image, :nickname, :address, :profile).merge(user_id: current_user.id, private_person_id: params[:private_person_id])
  end
  
end
