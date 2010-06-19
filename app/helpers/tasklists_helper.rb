module TasklistsHelper

  def options_for_tasklist_genre(genre)
    options_for_select(["Please select","Production","New Feature","New Control","Bug","Nice to have","New Specifications","Enhancements","Other"],  :selected => genre )
  end

  def options_for_tasklist_priority(priority)
    options_for_select(["Please select","Low","Medium","High","Urgent"], :disabled => "Please select", :selected => priority )
  end

  def options_for_tasklist_status(status)
    options_for_select(["Please select","To start","In progress","Done","Discarded","Reopened","To review"], :disabled => "Please select", :selected => status )
  end


end
