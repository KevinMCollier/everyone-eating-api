class Api::V1::AnswersController
  before_action :set_answer, only: [:show]
  before_action :set_question, only: [:index, :create]

  def index
    @answers = @question.answers
    render json: @answers
  end

  def show
    render json: @answer
  end

  def create
    location = Location.find_by(name: location_params[:name]) || Location.new(location_params)

    if location.new_record? && !location.save
      render json: { errors: location.errors }, status: :unprocessable_entity
      return
    end

    @answer = @question.answers.build(answer_params)
    @answer.location = location

    if @answer.save
      render json: @answer, status: :created
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  private
  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :code)
  end

  def answer_params
    params.require(:answer).permit(:response, :location_id)
  end
end
