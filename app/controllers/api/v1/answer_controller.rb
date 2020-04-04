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

      def edit
        @answer = Answer.find(params[:id])
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

      def update
        @answer = Answer.find(params[:id])
        if @answer.update(answer_params)
          render json: { status: 'SUCCESS',
                         message: 'Updated answer',
                         data: @answer }
        else
          render json: { status: 'ERROR',
                         message: 'Answer not updated',
                         data: @answer.errors }
        end
      end

      def destroy
        @answer = Answer.find(params[:id])
        @answer.destroy
        render json: { status: 'SUCCESS',
                       message: 'Deleted answer',
                       data: @answer }
      end

      private

      def answer_params
        params.require(:answer).permit(:option, :group)
      end

    end
  end
end