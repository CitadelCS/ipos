class ProgramDirectorsController < ApplicationController
  before_action :set_program_director, only: %i[ show edit update destroy ]

  # GET /program_directors or /program_directors.json
  def index
    @program_directors = ProgramDirector.all
  end

  # GET /program_directors/1 or /program_directors/1.json
  def show
  end

  # GET /program_directors/new
  def new
    @program_director = ProgramDirector.new
  end

  # GET /program_directors/1/edit
  def edit
  end

  # POST /program_directors or /program_directors.json
  def create
    @program_director = ProgramDirector.new(program_director_params)

    respond_to do |format|
      if @program_director.save
        format.html { redirect_to @program_director, notice: "Program director was successfully created." }
        format.json { render :show, status: :created, location: @program_director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @program_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_directors/1 or /program_directors/1.json
  def update
    respond_to do |format|
      if @program_director.update(program_director_params)
        format.html { redirect_to @program_director, notice: "Program director was successfully updated." }
        format.json { render :show, status: :ok, location: @program_director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @program_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_directors/1 or /program_directors/1.json
  def destroy
    @program_director.destroy
    respond_to do |format|
      format.html { redirect_to program_directors_url, notice: "Program director was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_director
      @program_director = ProgramDirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def program_director_params
      params.require(:program_director).permit(:Name, :Department)
    end
end
