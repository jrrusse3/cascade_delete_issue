class CoursesUsersController < ApplicationController
  before_action :set_courses_user, only: [:show, :edit, :update, :destroy]

  # GET /courses_users
  # GET /courses_users.json
  def index
    @courses_users = CoursesUser.all
  end

  # GET /courses_users/1
  # GET /courses_users/1.json
  def show
  end

  # GET /courses_users/new
  def new
    @courses_user = CoursesUser.new
  end

  # GET /courses_users/1/edit
  def edit
  end

  # POST /courses_users
  # POST /courses_users.json
  def create
    @courses_user = CoursesUser.new(courses_user_params)

    respond_to do |format|
      if @courses_user.save
        format.html { redirect_to @courses_user, notice: 'Courses user was successfully created.' }
        format.json { render :show, status: :created, location: @courses_user }
      else
        format.html { render :new }
        format.json { render json: @courses_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses_users/1
  # PATCH/PUT /courses_users/1.json
  def update
    respond_to do |format|
      if @courses_user.update(courses_user_params)
        format.html { redirect_to @courses_user, notice: 'Courses user was successfully updated.' }
        format.json { render :show, status: :ok, location: @courses_user }
      else
        format.html { render :edit }
        format.json { render json: @courses_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_users/1
  # DELETE /courses_users/1.json
  def destroy
    @courses_user.destroy
    respond_to do |format|
      format.html { redirect_to courses_users_url, notice: 'Courses user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courses_user
      @courses_user = CoursesUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courses_user_params
      params.require(:courses_user).permit(:user_id, :course_id, :abet_ids => [], :grade => [], abet_grades_attributes: [:id, :courses_user_id, :abet_id, :poor, :acceptable, :exceeds, :grade])
      #params.require(:courses_user).
    end
end
