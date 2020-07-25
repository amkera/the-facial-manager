class ClientsController < ApplicationController
  before_action :authenticate_esthetician!
  before_action :find_client, only: [:show, :edit, :update]

  def show
  end
  #<ActionController::Parameters {"controller"=>"clients", "action"=>"show", "id"=>"5"} permitted: false>

  def index
    @clients = Client.search(params[:query])
    render 'index'
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def destroy
    Client.find(params[:id]).destroy
    flash[:notice] = "This client has been removed."
    redirect_to clients_url
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number)
  end

end
