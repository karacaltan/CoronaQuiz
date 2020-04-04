module Api
  module V1
    class AnswerController < ApplicationController
      def index
        @answers = Answer.order('created_at ASC')
        render json: { status: 'SUCCESS',
                       message: 'Loaded answers',
                       data: @answers }
      end

      def show
        @answer = Answer.find(params[:id])
        render json: { status: 'SUCCESS',
                       message: 'Loaded answer',
                       data: @answer }
      end

      def new
        @answer = Answer.new
      end

      def create
        @answer = Answer.new(answer_params)

        if @answer.save
          render json: { status: 'SUCCESS',
                         message: 'Saved answer',
                         data: @answer }
        else
          render json: { status: 'ERROR',
                         message: 'Answer not saved',
                         data: @answer.errors }
        end
      end

      private

      def answer_params
        params.require(:answer).permit(:option, :group)
      end

    end
  end
end