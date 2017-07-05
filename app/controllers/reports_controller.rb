class ReportsController < ApplicationController
  expose(:reports)
  expose(:participations)
  expose(:subjects)
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
 end
