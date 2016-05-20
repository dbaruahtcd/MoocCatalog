class GreeterController < ApplicationController
  def hello
  	random_names = ["Dan","Amy","Mon"]
  	@name = random_names.sample
  	@time = Time.now
  	@time_displayed ||= 0
  	@time_displayed += 1
  end
  def goodbye
  end

end
