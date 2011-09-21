class AddTicketUrlToBars < ActiveRecord::Migration
  def change
    add_column  :Bars, :ticketurl, :string
  end
end
