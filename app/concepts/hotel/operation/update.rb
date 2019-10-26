class Hotel::Update < Trailblazer::Operation
    step :find
    fail :wrong_request
    step Contract::Build(constant: Hotel::Contract::Update)
    step Contract::Validate()
    step Contract::Persist()

  private

  def wrong_request(options, params:, **)
    options[:result] = false
    options[:errors] = { error: "Something went wrong with ID #{params[:id]}!" }
  end

  def find(options, params:)
    options[:model] = Hotel.find(options[:params][:id])
  end
end


  