class TypeSuggestionsController < ApplicationController
  before_action :set_type_suggestion, only: [:show, :edit, :update, :destroy]

  # GET /type_suggestions
  # GET /type_suggestions.json
  def index
    @type_suggestions = TypeSuggestion.all
  end

  # GET /type_suggestions/1
  # GET /type_suggestions/1.json
  def show
  end

  # GET /type_suggestions/new
  def new
    @type_suggestion = TypeSuggestion.new
  end

  # GET /type_suggestions/1/edit
  def edit
  end

  # POST /type_suggestions
  # POST /type_suggestions.json
  def create
    @type_suggestion = TypeSuggestion.new(type_suggestion_params)

    respond_to do |format|
      if @type_suggestion.save
        format.html { redirect_to @type_suggestion, notice: 'Type suggestion was successfully created.' }
        format.json { render :show, status: :created, location: @type_suggestion }
      else
        format.html { render :new }
        format.json { render json: @type_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_suggestions/1
  # PATCH/PUT /type_suggestions/1.json
  def update
    respond_to do |format|
      if @type_suggestion.update(type_suggestion_params)
        format.html { redirect_to @type_suggestion, notice: 'Type suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_suggestion }
      else
        format.html { render :edit }
        format.json { render json: @type_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_suggestions/1
  # DELETE /type_suggestions/1.json
  def destroy
    @type_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to type_suggestions_url, notice: 'Type suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_suggestion
      @type_suggestion = TypeSuggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_suggestion_params
      params.require(:type_suggestion).permit(:description)
    end
end
