family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

new_arr = []

family.select { |k, v|
  if k === :sisters || k === :brothers
    new_arr.push v
  end
}

p new_arr.flatten

# Solution
immediate_family = family.select { |k, v|
  k === :sisters || k === :brothers
}

arr = immediate_family.values.flatten

p arr
