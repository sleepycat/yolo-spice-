json.array!(@magazines) do |magazine|
  json.extract! magazine, :status, :title, :readingperiod, :payment, :magazineformat, :submissionrestriction, :genre, :publicationcycle, :submissionlimit, :submittoaddress
  json.url magazine_url(magazine, format: :json)
end
