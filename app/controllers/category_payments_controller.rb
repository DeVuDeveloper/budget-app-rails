class CategoryPaymentsController < ApplicationController
  before_action :set_category_payment, only: %i[show edit update destroy]

  # GET /category_payments or /category_payments.json
  def index
    @category_payments = CategoryPayment.all
  end

  # GET /category_payments/1 or /category_payments/1.json
  def show; end

  # GET /category_payments/new
  def new
    @category_payment = CategoryPayment.new
  end

  # GET /category_payments/1/edit
  def edit; end

  # POST /category_payments or /category_payments.json
  def create
    @category_payment = CategoryPayment.new(category_payment_params)
    @payment = Payment.new
    @user = current_user
    @payment.user_id = current_user.id
    @payment.name = params[:name]
    @payment.amount = params[:amount]

    respond_to do |format|
      if @category_payment.save
        format.html do
          redirect_to category_payment_url(@category_payment), notice: 'Category payment was successfully created.'
        end
        format.json { render :show, status: :created, location: @category_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_payments/1 or /category_payments/1.json
  def update
    respond_to do |format|
      if @category_payment.update(category_payment_params)
        format.html do
          redirect_to category_payment_url(@category_payment), notice: 'Category payment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @category_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_payments/1 or /category_payments/1.json
  def destroy
    @category_payment.destroy

    respond_to do |format|
      format.html { redirect_to category_payments_url, notice: 'Category payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category_payment
    @category_payment = CategoryPayment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_payment_params
    params.fetch(:category_payment, {})
  end
end
