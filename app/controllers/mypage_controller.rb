class MypageController < ApplicationController
  # ユーザーがログインしているか確認するためのコールバック
  before_action :authenticate_user!

  # GET /mypage
  def show
    @articles = current_user.articles.page(params[:page])
  end
end
