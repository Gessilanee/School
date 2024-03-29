class Admin::ClassSchoolsController < Admin::BaseController
  before_action :set_class_school, only: [:show, :edit, :update, :destroy]

  def index
    @class_schools = ClassSchool.all
  end

  def new
    @class_school = ClassSchool.new
  end

  def edit
  end

  def show
  end

  def create
    @class_school = ClassSchool.new(class_school_params)
    if @class_school.save
      flash[:notice] = 'Turma criada com sucesso.'
      redirect_to admin_class_schools_path
    else
      flash[:alert] = 'Erro ao cadastrar Turma, por favor corrigir!.'
      render :new
    end
  end

  def update
    if @class_school.update(class_school_params)
      flash[:notice] = 'Turma atualizada com sucesso'
      redirect_to admin_class_schools_path
    else
      flash[:alert] = 'Erro ao atualizar turma, por favor corrigi.'
      render :edit
    end
  end


  def destroy
    @class_school.destroy
    flash[:notice] = 'Turma excluída com sucesso.'
    redirect_to action: :index
  end


private
  def set_class_school
    @class_school = ClassSchool.find(params[:id])
  end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

  def class_school_params
    params.require(:class_school).permit(:name)
  end
end