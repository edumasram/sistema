class RelatoriosController < ApplicationController
def index
    @produtos = Produto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produtos }
    end
  end

end
