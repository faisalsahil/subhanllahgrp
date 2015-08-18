module ApplicationHelper

	def active_class(ctrl_name, act_name)
		controller_name == ctrl_name and action_name == act_name ? "active" : ""	
	end

	def active_class_dous(ctrl1_name, act1_name, ctrl2_name, act2_name)
		(controller_name == ctrl1_name and action_name == act1_name) || (controller_name == ctrl2_name and action_name == act2_name) ? "active" : ""	
	end
end
