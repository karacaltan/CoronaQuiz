module Api
  module V1
    class QuestionsController < ApplicationController
      def index
        @questions = Question.order('created_at ASC')
        render json: { status: 'SUCCESS',
                       message: 'Loaded questions',
                       questions: @questions }
      end

      def show
        @question = Question.find(params[:id])
        render json: { status: 'SUCCESS',
                       message: 'Loaded question',
                       data: @question }
      end

      def new
        @question = Question.new
      end

      def edit
        @question = Question.find(params[:id])
      end

      def create
        @question = Question.new(question_params)

        if @question.save
          render json: { status: 'SUCCESS',
                         message: 'Saved question',
                         data: @answer }
        else
          render json: { status: 'FAILED',
                         message: 'Question not saved',
                         data: @answer }
        end
      end

      def update
        @question = Question.find(params[:id])
        if @question.update
          render json: { status: 'SUCCESS',
                         message: 'Updated question',
                         data: @question }
        else
          render json: { status: 'SUCCESS',
                         message: 'Question not updated',
                         data: @question.errors }
        end
      end

      def destroy
        @question = Question.find(params[:id])
        @question.destroy
        render json: { status: 'SUCCESS',
                       message: 'Deleted question',
                       data: @question }
      end

      def answers_by_question
        @question = Question.find(params[:question_id])
        @answers = Answer.where(question: @question)
        render json: { status: 'SUCCESS',
                       message: 'Loaded answers by question',
                       question: @question, answers: @answers }
      end

      def all_answers
        questions = []
        answers = []
        questionnaire = []
        questionnaire_json = { 'questions' => questions }
        @questions = Question.order('created_at ASC')
        @answers = Answer.order('created_at ASC')
        index = 0
        @answers.each do |key, value|
          @question = Question.find(key.question_id)
          answers.push(key)
          index += 1
          if index == 2
            question_json = { id: @question.id,
                              text: @question.text,
                              answers: answers }
            questionnaire_json['questions'].push(question_json)
            index = 0
            answers = []
          end
        end
        questionnaire.push(questionnaire_json)
        render json: { questionnaire: questionnaire_json }
      end

      private

      def question_params
        params.require(:question).permit(:text)
      end
    end
  end
end