class ProdutosController < ApplicationController

#  access_control do
#    allow :gestor,      :to => [:index, :show, :new, :edit, :create, :update ]
#    allow :administrador, :to => [:index, :show, :new, :edit, :create, :update, :destroy ]
#  end

  def index
    if params[:query]=="Digitar..." or params[:query].nil? or params[:query].empty?
      @produtos = Produto.paginate(:page => params[:page], :order => 'nome') rescue nil
    else
      if params[:filtro]=="Buscar por..." or params[:filtro].nil? or params[:filtro].empty?
        flash[:notice] = "Buscar por... nao foi preenchido"
      else
        if params[:filtro]=="nome"
          @produtos = Produto.paginate(:page => params[:page], :order => 'nome',
            :conditions => ['produtos.'+"#{params[:filtro]}"+' LIKE ?', "%#{params[:query]}%"]) rescue nil
        else
          @produtos = Produto.paginate(:page => params[:page], :order => 'nome',
            :conditions => ['produtos.'+"#{params[:filtro]} = ?", params[:query]]) rescue nil
        end
      end
    end

    if @produtos.nil? or @produtos.empty?
      flash[:alert] = "Nenhum registro foi encontrado"
    end
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def new
    @produto = Produto.new
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def create
    @produto = Produto.new(params[:produto])

    respond_to do |format|
      if @produto.save
        format.html { redirect_to(@produto, :notice => 'Produto criado com sucesso.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        format.html { redirect_to(@produto, :notice => 'Produto alterado com sucesso.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    redirect_to(produtos_url)
  end
end
