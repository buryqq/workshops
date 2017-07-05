class ReportsController < ApplicationController
    expose(:subject_items) { SubjectItem.includes(:teacher, students: [:subject_item_notes]) }
 end
