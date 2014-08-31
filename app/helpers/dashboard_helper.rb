module DashboardHelper
  def change_name star_name
    array = star_name.split
    first_char = array[0][0]
    last_char = array[-1][0]
    
    array[0][0] = last_char
    array[-1][0] = first_char
    
    array.join(' ')
  end
end
