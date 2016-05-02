class SurveysController < ApplicationController
	def index
	end

	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(survey_params)
		if @survey.valid?
			@survey.save
			redirect_to surveys_path
		else
			render 'new'
		end
	end

	private
		def survey_params
			params.require(:survey).permit(:zipcode,:gender,:race,:industry,:age,:email,:faced_microaggressions,:seen_microaggressions)
		end
end
