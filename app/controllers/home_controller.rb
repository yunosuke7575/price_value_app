require 'net/http'

class HomeController < ApplicationController
  def top

  	@room_type = params[:room_type]
  	@num_rooms = params[:num_rooms]
  	@square = params[:square]
  	@floor = params[:floor]
  	@building_type = params[:building_type]
  	@structure_type = params[:structure_type]
  	@floor_height = params[:floor_height]


  	params = URI.encode_www_form({"room_type"=>@room_type, "num_rooms"=>@num_rooms, "square"=>@square,
  		"floor"=>@floor,"building_type"=>@building_type,"structure_type"=>@structure_type,"floor_height"=>@floor_height})
  	uri = URI.parse("http://localhost:8080/predict?#{params}")
  	@query = uri.query

  	response = Net::HTTP.start(uri.host, uri.port) do |http|
      # 接続時に待つ最大秒数を設定
      http.open_timeout = 5
      # 読み込み一回でブロックして良い最大秒数を設定
      http.read_timeout = 10
      # ここでWebAPIを叩いている
      # Net::HTTPResponseのインスタンスが返ってくる
      http.get(uri.request_uri)
    end

    begin
      # responseの値に応じて処理を分ける
      case response
      # 成功した場合
      when Net::HTTPSuccess
        # responseのbody要素をJSON形式で解釈し、hashに変換
        @result = JSON.parse(response.body)
        # 表示用の変数に結果を格納
      # 別のURLに飛ばされた場合
      when Net::HTTPRedirection
        @message = "Redirection: code=#{response.code} message=#{response.message}"
      # その他エラー
      else
        @message = "HTTP ERROR: code=#{response.code} message=#{response.message}"
      end
    # エラー時処理
    rescue IOError => e
      @message = "e.message"
    rescue TimeoutError => e
      @message = "e.message"
    rescue JSON::ParserError => e
      @message = "e.message"
    rescue => e
      @message = "e.message"
    end
  	
  end

  def new
  end

end
