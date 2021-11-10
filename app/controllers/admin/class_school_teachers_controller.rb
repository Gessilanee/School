class Admin::ClassSchoolTeachersController < Admin::BaseController
  before_action :set_class_school_teacher, only: [:show, :edit, :update, :destroy]
  
  def index
    @class_school_teachers = ClassSchoolTeacher.all
  end

  def new
    @class_school_teacher = ClassSchoolTeacher.new
  end

  def edit
  end

  def create
    @class_school_teacher = ClassSchoolTeacher.new(class_school_teacher_params)
    if @class_school_teacher.save
      flash[:notice] = 'Criado com sucesso.'
      redirect_to admin_class_school_teachers_path
    else
      flash[:alert] = 'Erro ao cadastrar, por favor corrigir!.'
      render :new
    end
  end

  def update
    if @class_school_teacher.update(class_school_teacher_params)
      flash[:notice] = 'Atualização realizada com sucesso'
      redirect_to admin_class_school_teachers_path
    else
      flash[:alert] = 'Erro ao atualizar, por favor corrigi.'
      render :edit
    end
  end
  
  
  def destroy
    @class_school_teacher.destroy
    flash[:notice] = 'Turma/professor excluída com sucesso.'
    redirect_to action: :index
  end




  private
  def set_class_school_teacher
    @class_school_teacher = ClassSchoolTeacher.find(params[:id])
  end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

  def class_school_teacher_params
    params.require(:class_school_teacher).permit(:id, :teacher_id, :class_school_id)
  end
end
