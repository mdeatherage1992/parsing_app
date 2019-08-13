# attribute = params[:sort] rescue nil
# direction = params[:direction] rescue nil
# Ternary Operator Sorting
# !params[:sort] ? @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: 'start_date', options: "num-25.skp-#{offset}.sortorder-D"}) : params[:direction] == 'asc' ?  @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: attribute, options: "num-25.skp-#{offset}.sortorder-A"}) : @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: attribute, options: "num-25.skp-#{offset}.sortorder-D"})
# Conditional sorting
# if params[:sort]
#   direction = params[:direction]
#   attribute = params[:sort]
#   if direction == 'asc'
#   @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: attribute, options: "num-25.skp-#{offset}.sortorder-A"})
# else
#   @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: attribute, options: "num-25.skp-#{offset}.sortorder-D"})
# end
# else
# @previous = ResourceAssignment.where(status: ['Requested','Accepted','Confirmed','Late Cancellation'], related_resource: current_user.qb_resource_id, appointment_start_date: {BF: Date.today - 30.days}, query_options: {slist: 'start_date', options: "num-25.skp-#{offset}.sortorder-D"})
# end
