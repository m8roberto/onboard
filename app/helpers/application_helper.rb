module ApplicationHelper

	def md(text)
		RDiscount.new(text).to_html.html_safe
		# simple_format(text)
	end

end
