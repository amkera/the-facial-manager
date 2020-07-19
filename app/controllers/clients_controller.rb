class ClientsController < ApplicationController
  def show
    find_client
  end
  #<ActionController::Parameters {"controller"=>"clients", "action"=>"show", "id"=>"5"} permitted: false>

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to client_path(@client)
  end

  def edit
    find_client
  end

  def update
    find_client
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def destroy
  end


  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number)
  end

end
