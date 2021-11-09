class Admin::AttendancesController < Admin::BaseController
  before_action :set_attendance, only: %i[ show edit update destroy ]

  # GET /attendances or /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1 or /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances or /attendances.json
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      flash[:notice] = 'Franquência registrada com sucesso.'
      redirect_to   admin_attendances_path
    else
      flash[:alert] = 'Erro ao registar frequência do aluno, por favor corrigir!.'
      render :new
    end
  end

  # PATCH/PUT /attendances/1 or /attendances/1.json
  def update
    if @attendance.update(attendance_params)
      flash[:notice] = 'Frequência atualizada com sucesso'
      redirect_to  admin_attendances_path
    else
      flash[:alert] = 'Erro ao atualizar Frequência, por favor corrigi.'
      render :edit
    end
  end

  # DELETE /attendances/1 or /attendances/1.json
  def destroy
    @attendance.destroy
    flash[:notice] = 'Frequência excluída com sucesso.'
    redirect_to action: :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendance_params
      params.require(:attendance).permit(:frequency, :student_id, :class_school_id)
    end
end
