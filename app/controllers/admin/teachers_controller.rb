class Admin::TeachersController < Admin::BaseController
  before_action :set_teacher, only: %i[ show edit update destroy ]

  # GET /teachers or /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1 or /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers or /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = 'Professor criado com sucesso.'
      redirect_to admin_teachers_path
    else
      flash[:alert] = 'Erro ao cadastrar professor, por favor corrigir!.'
      render :new
    end
  end


  # PATCH/PUT /teachers/1 or /teachers/1.json
  def update
    if @teacher.update(teacher_params)
      flash[:notice] = 'Professsor atualizado com sucesso'
      redirect_to  admin_teachers_path
    else
      flash[:alert] = 'Erro ao atualizar aluno, por favor corrigi.'
      render :edit
    end
  end


  # DELETE /teachers/1 or /teachers/1.json
  def destroy
    @teacher.destroy
    flash[:notice] = 'Professor excluído com sucesso.'
    redirect_to action: :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:name, :address, :phone, :discipline_id, :user_id)
    end
end
