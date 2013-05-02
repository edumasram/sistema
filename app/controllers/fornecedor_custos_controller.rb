class FornecedorCustosController < ApplicationController
  # GET /fornecedor_custos
  # GET /fornecedor_custos.json
  def index
    @fornecedor_custos = FornecedorCusto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fornecedor_custos }
    end
  end

  # GET /fornecedor_custos/1
  # GET /fornecedor_custos/1.json
  def show
    @fornecedor_custo = FornecedorCusto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fornecedor_custo }
    end
  end

  # GET /fornecedor_custos/new
  # GET /fornecedor_custos/new.json
  def new
    @fornecedor_custo = FornecedorCusto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fornecedor_custo }
    end
  end

  # GET /fornecedor_custos/1/edit
  def edit
    @fornecedor_custo = FornecedorCusto.find(params[:id])
  end

  # POST /fornecedor_custos
  # POST /fornecedor_custos.json
  def create
    @fornecedor_custo = FornecedorCusto.new(params[:fornecedor_custo])

    respond_to do |format|
      if @fornecedor_custo.save
        format.html { redirect_to @fornecedor_custo, notice: 'Fornecedor custo was successfully created.' }
        format.json { render json: @fornecedor_custo, status: :created, location: @fornecedor_custo }
      else
        format.html { render action: "new" }
        format.json { render json: @fornecedor_custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fornecedor_custos/1
  # PUT /fornecedor_custos/1.json
  def update
    @fornecedor_custo = FornecedorCusto.find(params[:id])

    respond_to do |format|
      if @fornecedor_custo.update_attributes(params[:fornecedor_custo])
        format.html { redirect_to @fornecedor_custo, notice: 'Fornecedor custo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fornecedor_custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedor_custos/1
  # DELETE /fornecedor_custos/1.json
  def destroy
    @fornecedor_custo = FornecedorCusto.find(params[:id])
    @fornecedor_custo.destroy

    respond_to do |format|
      format.html { redirect_to fornecedor_custos_url }
      format.json { head :no_content }
    end
  end
end
