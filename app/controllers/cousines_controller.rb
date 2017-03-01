class CousinesController < ApplicationController
  def index
    @q = Cousine.ransack(params[:q])
    @cousines = @q.result(:distinct => true).includes(:dishes).page(params[:page]).per(10)

    render("cousines/index.html.erb")
  end

  def show
    @dish = Dish.new
    @cousine = Cousine.find(params[:id])

    render("cousines/show.html.erb")
  end

  def new
    @cousine = Cousine.new

    render("cousines/new.html.erb")
  end

  def create
    @cousine = Cousine.new


    save_status = @cousine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cousines/new", "/create_cousine"
        redirect_to("/cousines")
      else
        redirect_back(:fallback_location => "/", :notice => "Cousine created successfully.")
      end
    else
      render("cousines/new.html.erb")
    end
  end

  def edit
    @cousine = Cousine.find(params[:id])

    render("cousines/edit.html.erb")
  end

  def update
    @cousine = Cousine.find(params[:id])


    save_status = @cousine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cousines/#{@cousine.id}/edit", "/update_cousine"
        redirect_to("/cousines/#{@cousine.id}", :notice => "Cousine updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Cousine updated successfully.")
      end
    else
      render("cousines/edit.html.erb")
    end
  end

  def destroy
    @cousine = Cousine.find(params[:id])

    @cousine.destroy

    if URI(request.referer).path == "/cousines/#{@cousine.id}"
      redirect_to("/", :notice => "Cousine deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Cousine deleted.")
    end
  end
end
