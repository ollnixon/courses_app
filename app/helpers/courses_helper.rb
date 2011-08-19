module CoursesHelper
  def time_until_start(course)
    days = (course.start_date - Date.today).to_i
    
    if days < 1
      "course has already started"
    else
      "#{distance_of_time_in_words course.start_date, Date.today}"
      "#{distance_of_time_in_words_to_now course.start_date}"
      #"#{pluralize days, 'day'} to go"
    end
  end
end
