module ApplicationHelper

  def signups_left
    10000 - User.count
  end

end
