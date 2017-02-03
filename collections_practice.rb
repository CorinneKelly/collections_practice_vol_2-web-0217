# your code goes here
def begins_with_r(array)
  array.each do |word|
    return false unless word.split(//).first == "r"
  end
  true
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.slice(0..1) == "wa"
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

def count_elements(array)
  final_array =[]
  uniq_array = array.uniq
  array.each do |hash|
    unless final_array.include?(hash)
      final_array << hash
    end
  end


  # array.each do |hash|
  #   hash.each do |key, value|
  #     final_array.each do |final_hashes|
  #       if final_hashes.has_value?(value)
  #         final_hashes[:count] += 1
  #       end
  #     end
  #   end
  # end
  count = 0
  uniq_array.each do |hash|
    count = array.count(hash)
    final_array.each do |hash_final|
      if hash == hash_final
        hash_final[:count] = count
      end
    end
  end
  final_array
end

def merge_data(keys, data)
  keys.each do |hash|
    data.each do |hashes|
      hashes.each do |name_in_data, value_hash|
        if hash[:first_name] == name_in_data
          value_hash.each do |symbol, facts|
            hash[symbol] = facts
          end
        end
      end
    end
  end
  keys
end

def find_cool(array)
  final_array = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        final_array << hash
      end
    end
  end
  final_array
end

def organize_schools(hash)
  final_hash = {}

  hash.each do |school_name, location_hash|
    location_hash.each do |location_tag, city|
      unless final_hash[city]
        final_hash[city] = [school_name]
      else
        final_hash[city] << school_name
      end
    end
  end
  final_hash
end
