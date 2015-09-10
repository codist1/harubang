class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:write, :modify, :delete, :enroll_1, :mypage, :enroll_2]
  def cover
    render layout: false
  end
  
  def index
    @adrs = Adr.all
     render layout: false
     
  end

  
  def enroll_1

  end
  
  def write
      s = Adr.create(
      adr_email: current_user.email,  
      adr_title: params[:title], 
      adr_zip: params[:zip],
      adr_ad: params[:ad],
      adr_adr: params[:adr],
      adr_content: params[:content],
      my_image: params[:image_file])


      redirect_to "/home/detail/#{s.id}"
  end

  def enroll_2
    
  end
  
  def write_2
        eds = Adr_2.create(
      adr2_email: current_user.email,  
      adr2_title: params[:title], 
      adr2_zip: params[:zip],
      adr2_ad: params[:ad],
      adr2_adr: params[:adr],
      adr2_content: params[:content],
      my2_image: params[:image_file])


      redirect_to "/home/detail_2/#{eds.id}"
  end
  
  def detail
    @tail = Adr.find(params[:id])
    
  end
  
  def detail_2
    @tail = Adr_2.find(params[:id])
  end
  def mypage
     @adrs = Adr.all
  end


  def modify
      @one_adr = Adr.find(params[:id])
        if @one_adr.adr_email == current_user.email
          
        else
          redirect_to :back
          flash[:msg] = "권한이 없습니다."
        end
  end
    
  def update
    flash[:msg] = "수정하였습니다."
    one_adr = Adr.find(params[:id])
        one_adr.adr_title = params[:new_title]
        one_adr.adr_zip = params[:new_zip]
        one_adr.adr_ad = params[:new_ad]
        one_adr.adr_adr = params[:new_adr]
        one_adr.adr_content = params[:new_content]
        one_adr.save
        
        
    redirect_to "/home/detail/#{one_adr.id}"
  end
  
  def delete
    one_adr = Adr.find(params[:id])
      if one_adr.adr_email == current_user.email
        one_adr.destroy
        flash[:msg] = "삭제성공했습니다."
        redirect_to '/home/index'
      else
        redirect_to :back
        flash[:msg] = "권한이 없습니다."
      end
  end
end