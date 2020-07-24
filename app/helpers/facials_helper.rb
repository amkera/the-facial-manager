module FacialsHelper
  def esthetician_id_field(facial)
    if facial.esthetician.nil?
      select_tag "facial[esthetician_id]", options_from_collection_for_select(Esthetician.all, :id, :email)
    else
      hidden_field_tag "facial[esthetician_id]", facial.esthetician_id
    end
  end
end
