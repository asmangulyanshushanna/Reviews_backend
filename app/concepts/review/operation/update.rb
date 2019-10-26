class Review::Update < Trailblazer::Operation
    step :find
    fail :wrong_request
    step Contract::Build(constant: Review::Contract::Update)
    step Contract::Validate()
    step Contract::Persist()

  private

  def wrong_request(options, params:, **)
    options[:result] = false
    options[:errors] = { error: "Something went wrong with ID #{params[:id]}!" }
  end

  def find(options, params:)
    options[:model] = Review.find(options[:params][:id])
  end
end
