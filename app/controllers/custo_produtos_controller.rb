class CustoProdutosController < ApplicationController
  # GET /custo_produtos
  # GET /custo_produtos.json
  def index
    @custo_produtos = CustoProduto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custo_produtos }
    end
  end

  # GET /custo_produtos/1
  # GET /custo_produtos/1.json
  def show
    @custo_produto = CustoProduto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custo_produto }
    end
  end

  # GET /custo_produtos/new
  # GET /custo_produtos/new.json
  def new
    @custo_produto = CustoProduto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @custo_produto }
    end
  end

  # GET /custo_produtos/1/edit
  def edit
    @custo_produto = CustoProduto.find(params[:id])
  end

  # POST /custo_produtos
  # POST /custo_produtos.json
  def create
    @custo_produto = CustoProduto.new(params[:custo_produto])

    respond_to do |format|
      if @custo_produto.save
        format.html { redirect_to @custo_produto, notice: 'Custo produto was successfully created.' }
        format.json { render json: @custo_produto, status: :created, location: @custo_produto }
      else
        format.html { render action: "new" }
        format.json { render json: @custo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custo_produtos/1
  # PUT /custo_produtos/1.json
  def update
    @custo_produto = CustoProduto.find(params[:id])

    respond_to do |format|
      if @custo_produto.update_attributes(params[:custo_produto])
        format.html { redirect_to @custo_produto, notice: 'Custo produto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @custo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custo_produtos/1
  # DELETE /custo_produtos/1.json
  def destroy
    @custo_produto = CustoProduto.find(params[:id])
    @custo_produto.destroy

    respond_to do |format|
      format.html { redirect_to custo_produtos_url }
      format.json { head :no_content }
    end
  end
end
