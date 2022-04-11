class EmployeeInfosController < ApplicationController
  def index
    @employeeInfo=EmployeeInfo.all
    #employeeInfo--instance variable
  end

  def deleting
    puts "deleting method"
    @employeeInfo = EmployeeInfo.find(params[:id])
   if @employeeInfo.destroy  
    redirect_to root_path
   else
    puts "something went wrong"
   end
  end 

  def show
   @employeeInfo=EmployeeInfo.find(params[:id])
    #employeeInfo--instance variable
  end

  def new
    @employeeInfos=EmployeeInfo.new
  end

  def create
    @employeeInfo = EmployeeInfo.new(emp_params)
    if @employeeInfo.save
      redirect_to root_path
    else
      render :new
    end
  end

      def edit
        puts "inside edit"
      @employeeInfo = EmployeeInfo.find(params[:id])
    end
  
    def update
      puts "inside update"
      @employeeInfo = EmployeeInfo.find(params[:id])
        if @employeeInfo.update(emps_params)
        redirect_to root_path
      else
        render :edit, status: :unprocessable_entity
      end
       end
  

    private
    def emps_params
      params.require(:employee_info).permit(:first_Name, :last_Name,:empId,:gender,:highest_Degree)
    end

    private
  def emp_params
    params.permit(:first_Name, :last_Name,:empId,:gender,:highest_Degree)
  end 
end
