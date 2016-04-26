class SurveysController < ApplicationController
	def index
	end

	def new
		@survey = Survey.new
	end

	def create
		Survey.create!(survey_params)
		redirect_to surveys_path
	end


	private
		def survey_params
			params.require(:survey).permit(:zipcode,:gender,:race,:age,:email,:faced_micoragressions,:seen_microaggressions)
		end
end
