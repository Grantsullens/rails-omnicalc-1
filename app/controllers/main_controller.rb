class MainController < ApplicationController

  def home
    render({:template => "main/home" })
  end

  def square
    type = params.fetch("type")

    if type == "new"
      render({:template => "main/square_new" })
    elsif
      @number = params.fetch("number").to_f
      @square = @number * @number
      @square = @square.to_f
      render({:template => "main/square_results" })
    end
  end

  def square_root
    type = params.fetch("type")
    if type == "new"
     render({:template => "main/square_root_new" })
    elsif type == "results"
      @user_number = params.fetch("user_number").to_f
      @square_root = Math.sqrt(@user_number)
      render({:template => "main/square_root_results" })
    end
  end

  def payment
    type = params.fetch("type")

    if type == "new"
      render({:template => "main/payment_new" })
    elsif type == "results"
      @user_apr = params.fetch("user_apr").to_f
      @user_years = params.fetch("user_years").to_i
      @user_pv = params.fetch("user_pv").to_f
  
      @r = @user_apr / (100 * 12)
      @n = @user_years * 12
      @p = (@r * @user_pv) / (1 - (1 + @r) ** -@n)
  
      @user_apr = @user_apr.to_fs(:percentage, {:precision => 4})
      @user_pv = @user_pv.to_fs(:currency)
      @p = @p.to_fs(:currency)
      render({:template => "main/payment_results" })
    end
  end

  def random
    type = params.fetch("type")
    if type == "new"
     render({:template => "main/random_new" })
    elsif type == "results"
      @user_min = params.fetch("user_min").to_f
      @user_max = params.fetch("user_max").to_f

      @rand = rand(@user_min..@user_max)
      render({:template => "main/random_results" })
    end
  end

end
