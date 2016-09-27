class ArrayUtilities

  # NOTE:  Since arrays can contain any type of object, I left this method generic so it handles arrays with all kinds
  #        of objects including arrays of Integers.
  def self.flatten(array, flattened = [])
    raise 'Parameter must be an Array' unless array.is_a?(Array)

    array.each do |entry|
      if entry.is_a?(Array)
        flatten(entry, flattened)
      else
        flattened << entry
      end

    end

    flattened
  end

end

