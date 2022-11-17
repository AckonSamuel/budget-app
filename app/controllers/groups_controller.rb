class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  # GET /groups or /groups.json
  def index
    @groups = current_user.groups
  end

  # GET /groups/1 or /groups/1.json
  def show
    @group = Group.new
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups or /groups.json
  def create
    group = Group.new(group_params)
    group.user = current_user

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
