class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:write, :modify, :delete, :enroll_1, :mypage, :enroll_2, :write_2, :modify_2, :delete_2]

  
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
      my_image: params[:image_file],
      my_image2: params[:image_file2],
      my_image3: params[:image_file3],
      adr_before: params[:before],
      adr_after: params[:after],
      y_money: params[:y_money],
      m_money: params[:m_money])


      redirect_to "/home/detail/#{s.id}"
  end


  def board
    @detail = Adrr.all
    @detail = Adrr.paginate(:page => params[:page], :per_page => 9) 
  end
  
  def enroll_2
    
  end
  
  def write_2
        eds = Adrr.new
      eds.adr2_email = current_user.email
      eds.adr2_title = params[:title] 
      eds.adr2_zip = params[:zip]
      eds.adr2_ad = params[:ad]
      eds.adr2_adr =  params[:adr]
      eds.adr2_content = params[:content]
      eds.my2_image_f = params[:image_file_f]
      eds.my2_image = params[:image_file]
      eds.my2_image2 = params[:image_file2]
      eds.my2_image3 = params[:image_file3]
      eds.save


      redirect_to "/home/detail_2/#{eds.id}"
  end
  
  def detail
    @tail = Adr.find(params[:id])
    
  end
  
  def detail_2
    @tail = Adrr.find(params[:id])
    @pro = Tv.all
    
    
  end
  
  def mypage
     @adrs = Adr.all
     @adrss = Adrr.all
  end
  
  def modify_2
      @one_adr = Adrr.find(params[:id])
        if @one_adr.adr2_email == current_user.email
          
        else
          redirect_to :back
          flash[:msg] = "권한이 없습니다."
        end
  end
    
  def update_2
    flash[:msg] = "수정하였습니다."
    one_adr = Adrr.find(params[:id])
      one_adr.adr2_email = current_user.email
      one_adr.adr2_title = params[:new_title]
      one_adr.adr2_zip = params[:new_zip]
      one_adr.adr2_ad = params[:new_ad]
      one_adr.adr2_adr = params[:new_adr]
      one_adr.adr2_content = params[:new_content]
        if params[:new_image_file_f] == nil?
          one_adr.my2_image_f = params[:new_image_file_f]
        else 
          one_adr.my2_image_f = one_adr.my2_image_f
        end
      one_adr.my2_image = params[:new_image_file]
      one_adr.my2_image2 = params[:new_image_file2]
      one_adr.my2_image3 = params[:new_image_file3]
      one_adr.save
        one_adr.save
        
        
    redirect_to "/home/detail_2/#{one_adr.id}"
  end
  
  def delete_2
    one_adr = Adrr.find(params[:id])
      if one_adr.adr2_email == current_user.email
        one_adr.destroy
        flash[:msg] = "삭제성공했습니다."
        redirect_to '/home/index'
      else
        redirect_to :back
        flash[:msg] = "권한이 없습니다."
      end
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
      one_adr.adr_email = current_user.email,  
      one_adr.adr_title = params[:new_title], 
      one_adr.adr_zip = params[:new_zip],
      one_adr.adr_ad = params[:new_ad],
      one_adr.adr_adr = params[:new_adr],
      one_adr.adr_content = params[:new_content],
      
      one_adr.my_image = params[:new_image_file],
      one_adr.my_image2 = params[:new_image_file2],
      one_adr.my_image3 = params[:new_image_file3],
      one_adr.adr_before = params[:new_before],
      one_adr.adr_after = params[:new_after],
      one_adr.y_money = params[:new_y_money],
      one_adr.m_money = params[:new_m_money]
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
  
  def detail_star
  
  end
end