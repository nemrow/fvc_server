class Hash
  def add_or_create_and_add(key, value)
    self[key] = [] if self[key].blank?
    if self[key].class == Array
      self[key] << value
    else
      raise InvalidDataStorageType, "The value of #{self[key]} is #{self[key].class}. Should be Array"
    end
  end
end