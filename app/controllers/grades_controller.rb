class GradesController < ApplicationController

  #$automated_readability_index = 4.71* (@characters/@words) + 0.5 * (@words/@sentences) - 21.43

  def index
    skill = params[:skill].downcase
    @writers = Writer.all
    @data = []
    @writers.each do |writer|
      if writer.skills_list.include?(skill)
        @data << {id: writer.id, name: writer.name, grade: writer.grade, photo: writer.photo}
      end
    end
    respond_to do |format|
      format.js
    end
  end
end

# Score Age Grade Level
# 1 5-6 Kindergarten
# 2 6-7 First Grade
# 3 7-8 Second Grade
# 4 8-9 Third Grade
# 5 9-10  Fourth Grade
# 6 10-11 Fifth Grade
# 7 11-12 Sixth Grade
# 8 12-13 Seventh Grade
# 9 13-14 Eighth Grade
# 10  14-15 Ninth Grade
# 11  15-16 Tenth Grade
# 12  16-17 Eleventh grade
# 13  17-18 Twelfth grade
# 14  18-22 College
