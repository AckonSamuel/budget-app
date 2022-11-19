class GroupsController < ApplicationController
  before_action :authenticate_user!
  # GET /groups or /groups.json
  def index
    @groups = current_user.groups
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # POST /groups or /groups.json
  def create
    group = Group.new(group_params)
    group.user_id = current_user.id

    if group.save
      redirect_to groups_path, notice: 'Group successfully create'
    else
      redirect_to new_group_path, notice: 'Group not created'
    end
  end

  private
  def group_params
    params.require(:new_group).permit(:name, :icon)
  end
end
