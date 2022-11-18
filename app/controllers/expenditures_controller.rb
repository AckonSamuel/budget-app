class ExpendituresController < ApplicationController
  before_action :authenticate_user!

  # GET /expenditures or /expenditures.json
  def index
    @group = Group.find(params[:group_id])
    @expenditures = @group.recent_expenditures
  end

  # GET /expenditures/new
  def new
    @expenditure = Expenditure.new
    @all_expenditures = current_user.groups
    @group_expenditure = @expenditure.group_expenditures.build
  end

  # POST /expenditures or /expenditures.json
  def create
    expenditure = Expenditure.new(expenditure_params)
    expenditure.user = current_user
    if expenditure.save
      expenditure_params[:group_expenditures][:group_id].each do |id|
        expenditure.group_expenditures.create(group_id: id) unless id == ''
      end
      redirect_to groups_path, notice: 'Expenditures recorded successfully'
    else
      render :new, error: 'Expenditure not recorded'
    end
  end

  private

    def expenditure_params
      params.require(:new_expenditure).permit(:name, :amount, group_expenditures: [group_id: []])
    end
end
