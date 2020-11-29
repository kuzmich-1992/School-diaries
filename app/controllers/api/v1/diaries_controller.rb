class Api::V1::DiariesController < ApplicationController
  def index
    diary = Diary.all.order(created_at: :desc)
    render json: diary
  end

  def create
    diary = Diary.create!(diary_params)
    if diary
      render json: diary
    else
      render json: diary.errors
    end
  end

  def show
    if diary
      render json: diary
    else
      render json: diary.errors
    end
  end

  def destroy
    diary&.destroy
    render json: { message: 'diary deleted!' }
  end

  private

  def diary_params
    params.permit(:name, :surname, :high_school_class)
  end

  def diary
    @diary ||= Diary.find(params[:id])
  end
end
