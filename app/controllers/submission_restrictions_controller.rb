class SubmissionRestrictionsController < ApplicationController
	@submission_restrictions = magazine.submission_restrictions.find[params(:id)]
end
