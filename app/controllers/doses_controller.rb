class DosesController < ApplicationController
  # def new
  before_action :set_dose
  # end
  def create
    @doses = Dose.
  end

private

  def doses_params
    params.require(:dose).permit(:name)

  end

end
