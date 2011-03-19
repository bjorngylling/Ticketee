module ApplicationHelper
  def title(*parts)
    @title = (parts << "Ticketee").join(" - ") unless parts.empty?
    @title or "Ticketee"
  end

  def admins_only(&block)
    block.call if current_user.try(:admin?)
    nil
  end
end
