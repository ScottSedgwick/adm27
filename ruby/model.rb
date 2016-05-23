require 'yaml'

class Activity
  attr_accessor :activity_name, :dateStart, :dateEnd, :feeEnclosed, :location, :leader, :emergencyContact, :emergencyPhone, :totalCost, :deposit, :depositDue, :balance, :balanceDue, :activities, :travelArrangements
  def initialize(hash = nil)
    unless hash.nil?
      load(hash)
    end
  end

  def load(hash)
    @activity_name = hash["activity_name"]
    @dateStart = hash["dateStart"]
    @dateEnd = hash["dateEnd"]
    @feeEnclosed = hash["feeEnclosed"]
    @location = hash["location"]
    @leader = hash["leader"]
    @emergencyContact = hash["emergencyContact"]
    @emergencyPhone = hash["emergencyPhone"]
    @totalCost = hash["totalCost"]
    @deposit = hash["deposit"]
    @depositDue = hash["depositDue"]
    @balance = hash["balance"]
    @balanceDue = hash["balanceDue"]
    @activities = hash["activities"]
    @travelArrangements = hash["travelArrangements"]
  end

  def to_yaml
    result = Array.new()
    result << "activity_name: \"#{@activity_name}\""
    result <<  "dateStart: \"#{@dateStart}\""
    result <<  "dateEnd: \"#{@dateEnd}\""
    result <<  "feeEnclosed: \"#{@feeEnclosed}\""
    result <<  "location: \"#{@location}\""
    result <<  "leader: \"#{@leader}\""
    result <<  "emergencyContact: \"#{@emergencyContact}\""
    result <<  "emergencyPhone: \"#{@emergencyPhone}\""
    result <<  "totalCost: \"#{@totalCost}\""
    result <<  "deposit: \"#{@deposit}\""
    result <<  "depositDue: \"#{@depositDue}\""
    result <<  "balance: \"#{@balance}\""
    result <<  "balanceDue: \"#{@balanceDue}\""
    result <<  "activities: \"#{@activities}\""
    result <<  "travelArrangements: \"#{@travelArrangements}\""
    result
  end
end

class Event
  attr_accessor :guardian, :guide, :activity
  def initialize(filename)
    if File.exist?(filename)
      hash = YAML.load(File.read(IN_FILE))
      load(hash)
      @activity = Activity.new(hash["activity"])
    else
      @guardian = 'scott'
      @guide = 'phoebe'
      @activity = Activity.new()
    end
  end

  def load(hash)
    @guardian = hash["guardian"]
    @guide = hash["guide"]
  end

  def to_yaml
    result = Array.new()
    result << "guardian: \"#{@guardian}\""
    result << "guide: \"#{@guide}\""
    result << "activity:"
    result.concat(@activity.to_yaml.map{|e| "  #{e}"})
    result
  end
end