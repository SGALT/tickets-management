class TicketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :index, :create]

  def index
    if current_user
      @tickets = Ticket.where(user_id: current_user.id).where(state: "pending").order(created_at: :asc)
    else
      @tickets = Ticket.where(user_id: current_student.user_id).where(state: "pending").order(created_at: :asc)
    end
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.pending!
    @ticket.save
    redirect_to tickets_path
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.finished!
    @ticket.save
    redirect_to tickets_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:user_id, :student_id, :message)
  end
end
