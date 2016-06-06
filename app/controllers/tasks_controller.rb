class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json

def iCal
  
    @task = Task.find(params[:id])
    # Create a calendar with an event (standard method)
    cal = Icalendar::Calendar.new
    cal.event do |e|
      e.dtstart     = Icalendar::Values::Date.new(@task.date)
      e.summary     = "#{@task.category} #{@task.title}"
      e.ip_class    = "PRIVATE"
    end

   cal.publish
   render text: cal.to_ical, content_type: 'text/calendar'
    
end


def sms


    @task = Task.find(params[:id])

    smsMessage = "#{@task.user.email}, you have #{(@task.date - Date.today).to_s.chop.chop.to_i} day(s) till your #{@task.category} task:#{@task.title}. Are you ready?!?!"


    sms = TestSms.hello_user(@task.user.mobile,"Remy-App",smsMessage)

    puts sms
    sms.deliver

    @task = nil
    redirect_to tasks_url

end

  def index

    @tasks = Task.order('user_id ASC').reorder('date ASC')
    

  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    @task.user = current_user

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :date, :time, :category)
    end
end
