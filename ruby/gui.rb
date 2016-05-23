require 'yaml'

APP_WIDTH = 600
APP_HEIGHT = 720
CAPTION_WIDTH = 200

class Activity
  attr_accessor :activity_name, :dateStart, :dateEnd, :feeEnclosed, :location, :leader, :emergencyContact, :emergencyPhone, :totalCost, :deposit, :depositDue, :balance, :balanceDue, :activities, :travelArrangements
end

class Event
  attr_accessor :guardian, :guide, :activity
  def initialize
    @guardian = 'scott'
    @guide = 'phoebe'
    @activity = Activity.new()
  end
end

IN_FILE = '../data/mydata.yaml'
OUT_FILE = '../data/output.pdf'

Shoes.app width: APP_WIDTH, height: APP_HEIGHT, title: "ADM27" do
  event = Event.new()
  stack width: APP_WIDTH do
    para ""
    flow do
      flow width: CAPTION_WIDTH do caption "Guide:" end
      list_box items: ["Phoebe", "Zoe"] do |l|
        event.guide = l.text().downcase
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Guardian:" end
      list_box items: ["Scott", "Meagen"] do |l|
        event.guardian = l.text().downcase
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Activity Name: " end
      edit_line do |e|
        event.activity.activity_name = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Date Start: " end
      edit_line do |e|
        event.activity.dateStart = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Date End: " end
      edit_line do |e|
        event.activity.dateEnd = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Fee Enclosed: " end
      edit_line do |e|
        event.activity.feeEnclosed = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Location: " end
      edit_line do |e|
        event.activity.location = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Leader: " end
      edit_line do |e|
        event.activity.leader = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Emergency Contact: " end
      edit_line do |e|
        event.activity.emergencyContact = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Emergency Phone: " end
      edit_line do |e|
        event.activity.emergencyPhone = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Total Cost: " end
      edit_line do |e|
        event.activity.totalCost = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Deposit: " end
      edit_line do |e|
        event.activity.deposit = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Deposit Due: " end
      edit_line do |e|
        event.activity.depositDue = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Balance: " end
      edit_line do |e|
        event.activity.balance = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Balance Due: " end
      edit_line do |e|
        event.activity.balanceDue = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Activities: " end
      edit_line do |e|
        event.activity.activities = e.text()
      end
    end
    flow do
      flow width: CAPTION_WIDTH do caption "Travel Arrangements: " end
      edit_line do |e|
        event.activity.travelArrangements = e.text()
      end
    end
    button "Generate PDF" do
      data = YAML.dump(event).lines[1..-1]
      File.open(IN_FILE, 'w') { |file| file.write(data.join) }
      system("stack exec adm27 -- --input #{IN_FILE} --output #{OUT_FILE}")
      system("open #{OUT_FILE}")
    end
  end
end
