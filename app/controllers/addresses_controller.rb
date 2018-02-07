class AddressesController < ApplicationController

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @address.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
