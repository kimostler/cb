require './app/models/array_utilities'

class ExecuteArrayUtilities

  # NOTE: To run with different data, modify the method default_data or add flatten_array calls to the execute method.

  def execute
    default_data.each {|data| flatten_array(data)}
  end
  
  def default_data
    [
        [],
        [1, 2, 3],
        [[1,2,[3]],4],
        [[1, 2, [3] ], 4, [5, [6, 7]]],
        [ [1, 2, 'abc' ], {key: :value}, 4],
        nil
    ]
  end

  def flatten_array(array)
    puts("\n")

    begin
      puts("Flattening Array: #{array}")
      puts("Result:  #{ArrayUtilities.flatten(array).inspect}")
    rescue Exception => e
      puts("*** An error occurred processing array: #{array.inspect}")
      puts("Message: #{e.message}")
    end
    puts("\n")
  end

end

ExecuteArrayUtilities.new.execute


