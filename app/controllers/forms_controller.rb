class FormsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :new, :create]

  def index
    @forms = Form.all
  end
  
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @forms = Form.all
  end

  def edit
  end


  def update
    if @form.update(form_params)
      redirect_to forms_path
    else
      render :edit
    end
  end

  def destroy
    if @form.destroy
      redirect_to forms_path
    end
  end
  
  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:title, :content, :start_time, :image).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in? && current_user.id == @form.user.id
      redirect_to action: :index
    end
  end

end
