class GrupoProdutosController < ApplicationController
  # GET /grupo_produtos
  # GET /grupo_produtos.xml
  def index
    @grupo_produtos = GrupoProduto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grupo_produtos }
    end
  end

  # GET /grupo_produtos/1
  # GET /grupo_produtos/1.xml
  def show
    @grupo_produto = GrupoProduto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grupo_produto }
    end
  end

  # GET /grupo_produtos/new
  # GET /grupo_produtos/new.xml
  def new
    @grupo_produto = GrupoProduto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grupo_produto }
    end
  end

  # GET /grupo_produtos/1/edit
  def edit
    @grupo_produto = GrupoProduto.find(params[:id])
  end

  # POST /grupo_produtos
  # POST /grupo_produtos.xml
  def create
    @grupo_produto = GrupoProduto.new(params[:grupo_produto])

    respond_to do |format|
      if @grupo_produto.save
        format.html { redirect_to(@grupo_produto, :notice => 'Grupo produto was successfully created.') }
        format.xml  { render :xml => @grupo_produto, :status => :created, :location => @grupo_produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grupo_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grupo_produtos/1
  # PUT /grupo_produtos/1.xml
  def update
    @grupo_produto = GrupoProduto.find(params[:id])

    respond_to do |format|
      if @grupo_produto.update_attributes(params[:grupo_produto])
        format.html { redirect_to(@grupo_produto, :notice => 'Grupo produto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grupo_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_produtos/1
  # DELETE /grupo_produtos/1.xml
  def destroy
    @grupo_produto = GrupoProduto.find(params[:id])
    @grupo_produto.destroy

    respond_to do |format|
      format.html { redirect_to(grupo_produtos_url) }
      format.xml  { head :ok }
    end
  end
end
