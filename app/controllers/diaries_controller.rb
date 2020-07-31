class DiariesController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = current_user.diaries.ransack(params[:q])
    @diaries = @q.result(distinct: true)
  end

  def show
    @diary = Diary.find(params[:id])
    if @diary.user_id != current_user.id
      redirect_to diaries_path, notice: "アクセスできません"
    end
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = current_user.diaries.new(diary_params)
    if @diary.save
      redirect_to diaries_path, notice: "#{@diary.title}を投稿しました"
    else
      render :new
    end
  end

  def edit
    @diary = Diary.find(params[:id])
    if @diary.user_id != current_user.id
      redirect_to diaries_path, notice: "アクセスできません"
    end
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diary_path(@diary), notice: "#{@diary.title}を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path, notice: "#{@diary.title}を削除しました"
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :body)
  end
end
