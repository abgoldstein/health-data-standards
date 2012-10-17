class Procedure < Entry
  field :site,             type: Hash
  field :incisionDateTime, type: Integer

  embeds_one :reason, class_name: "Entry"
  embeds_one :source, class_name: "Entry"
  
  belongs_to :performer, class_name: "Provider"

  alias :incision_date_time :incisionDateTime
  alias :incision_date_time= :incisionDateTime=
end