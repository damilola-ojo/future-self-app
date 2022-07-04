class LettersController < ApplicationController
before_action :authenticate_user!

  def index
    @letters = Letter.all
  end

  def show
    @letter = Letter.find(params[:id])
  end

  def new
    @letter = current_user.letters.build
  end

  def edit
    @letter = Letter.find(params[:id])
  end

  def create
    @letter = current_user.letters.build(letter_params)

    if @letter.save
      redirect_to root_path
    else
      render :new, status: :unporcessable_entity
    end
  end
  
  def update
    @letter = Letter.find(params[:id])

    if @letter.update(letter_params)
      redirect_to root_path
    else 
      render :edit, status: :unporcessable_entity
    end
  end

  def destroy
    @letter = Letter.find(params[:id])
    @letter.destroy 

    redirect_to root_path
  end

  private 
    def letter_params 
      params.required(:letter).permit(:id,
                                      :title,
                                      :content,
                                      :delivery_date,
                                      :delivery_email,
                                      :private)
    end
end
