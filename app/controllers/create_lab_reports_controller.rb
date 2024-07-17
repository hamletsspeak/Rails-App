class CreateLabReportsController < ApplicationController
  before_action :set_create_lab_report, only: %i[ show edit update destroy ]

  # GET /create_lab_reports or /create_lab_reports.json
  def index
    @create_lab_reports = CreateLabReport.all
  end

  # GET /create_lab_reports/1 or /create_lab_reports/1.json
  def show
  end

  # GET /create_lab_reports/new
  def new
    @create_lab_report = CreateLabReport.new
  end

  # GET /create_lab_reports/1/edit
  def edit
  end

  # POST /create_lab_reports or /create_lab_reports.json
  def create
    @create_lab_report = CreateLabReport.new(create_lab_report_params)

    respond_to do |format|
      if @create_lab_report.save
        format.html { redirect_to create_lab_report_url(@create_lab_report), notice: "Create lab report was successfully created." }
        format.json { render :show, status: :created, location: @create_lab_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_lab_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_lab_reports/1 or /create_lab_reports/1.json
  def update
    respond_to do |format|
      if @create_lab_report.update(create_lab_report_params)
        format.html { redirect_to create_lab_report_url(@create_lab_report), notice: "Create lab report was successfully updated." }
        format.json { render :show, status: :ok, location: @create_lab_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_lab_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_lab_reports/1 or /create_lab_reports/1.json
  def destroy
    @create_lab_report.destroy!

    respond_to do |format|
      format.html { redirect_to create_lab_reports_url, notice: "Create lab report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_lab_report
      @create_lab_report = CreateLabReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_lab_report_params
      params.require(:create_lab_report).permit(:user_id, :title, :description, :grade)
    end
end
