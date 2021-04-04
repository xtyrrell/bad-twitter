class PagesController < ApplicationController
  def home
    @beeps = Beep.all.limit 5
  end

  def rules
  end
end
