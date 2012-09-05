class SomeModelsController < ApplicationController
  # GET /some_models
  # GET /some_models.json
  def index
    @some_models = SomeModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @some_models }
    end
  end

  # GET /some_models/1
  # GET /some_models/1.json
  def show
    @some_model = SomeModel.find(params[:id])
    binding.pry
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @some_model }
    end
  end

  # GET /some_models/new
  # GET /some_models/new.json
  def new
    @some_model = SomeModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @some_model }
    end
  end

  # GET /some_models/1/edit
  def edit
    @some_model = SomeModel.find(params[:id])
  end

  # POST /some_models
  # POST /some_models.json
  def create
    @some_model = SomeModel.new(params[:some_model])

    respond_to do |format|
      if @some_model.save
        format.html { redirect_to @some_model, notice: 'Some model was successfully created.' }
        format.json { render json: @some_model, status: :created, location: @some_model }
      else
        format.html { render action: "new" }
        format.json { render json: @some_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /some_models/1
  # PUT /some_models/1.json
  def update
    @some_model = SomeModel.find(params[:id])

    respond_to do |format|
      if @some_model.update_attributes(params[:some_model])
        format.html { redirect_to @some_model, notice: 'Some model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @some_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /some_models/1
  # DELETE /some_models/1.json
  def destroy
    @some_model = SomeModel.find(params[:id])
    @some_model.destroy

    respond_to do |format|
      format.html { redirect_to some_models_url }
      format.json { head :no_content }
    end
  end
end
