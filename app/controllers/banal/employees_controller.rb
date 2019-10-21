# typed: false
class Banal::EmployeesController < ApplicationController
  before_action :set_banal_employee, only: [:show, :edit, :update, :destroy]

  # GET /banal/employees
  # GET /banal/employees.json
  def index
    @banal_employees = Banal::Employee.all
  end

  # GET /banal/employees/1
  # GET /banal/employees/1.json
  def show
  end

  # GET /banal/employees/new
  def new
    @banal_employee = Banal::Employee.new
  end

  # GET /banal/employees/1/edit
  def edit
  end

  # POST /banal/employees
  # POST /banal/employees.json
  def create
    @banal_employee = Banal::Employee.new(banal_employee_params)

    respond_to do |format|
      if @banal_employee.save
        format.html { redirect_to @banal_employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @banal_employee }
      else
        format.html { render :new }
        format.json { render json: @banal_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/employees/1
  # PATCH/PUT /banal/employees/1.json
  def update
    respond_to do |format|
      if @banal_employee.update(banal_employee_params)
        format.html { redirect_to @banal_employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_employee }
      else
        format.html { render :edit }
        format.json { render json: @banal_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/employees/1
  # DELETE /banal/employees/1.json
  def destroy
    @banal_employee.destroy
    respond_to do |format|
      format.html { redirect_to banal_employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_employee
      @banal_employee = Banal::Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_employee_params
      params.require(:banal_employee).permit(:Facebook, :Linkedin, :Role, :e_mail, :Mobile, :Address, :Country, :Full_Name, :Last_Name_2, :Last_Name_1, :Middle_Name, :First_Name)
    end
end
