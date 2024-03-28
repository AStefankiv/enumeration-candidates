require 'date'


@candidates = [
  {
    id: 5,
    years_of_experience: 4,
    github_points: 293,
    languages: ['C', 'Ruby', 'Python', 'Clojure'],
    date_applied: Date.today - 5,
    age: 26
  },
  {
    id: 7,
    years_of_experience: 1,
    github_points: 145,
    languages: ['JavaScript', 'Ruby', 'Go', 'Erlang'],
    date_applied: Date.today - 5,
    age: 19
  },
  {
    id: 9,
    years_of_experience: 6,
    github_points: 435,
    languages: ['JavaScript', 'SQL', 'C#'],
    date_applied: Date.today - 5,
    age: 32
  },
  {
    id: 10,
    years_of_experience: 3,
    github_points: 232,
    languages: ['Java', 'Ruby', 'JavaScript'],
    date_applied: Date.today - 5,
    age: 31
  },
  {
    id: 11,
    years_of_experience: 12,
    github_points: 32,
    languages: ['VB', 'Cobol', 'Fortran'],
    date_applied: Date.today - 5,
    age: 42
  },
  {
    id: 13,
    years_of_experience: 2,
    github_points: 328,
    languages: ['Python', 'Ruby', 'JavaScript'],
    date_applied: Date.today - 5,
    age: 25
  },
  {
    id: 15,
    years_of_experience: 1,
    github_points: 400,
    languages: ['JavaScript', 'Ruby'],
    date_applied: Date.today - 5,
    age: 16
  },
]

def find(id)
  @candidates.each do |candidate|
    return candidate if candidate[:id] == id
  end
  'Nil' #nil
end
  
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end
  
# def qualified_candidates(candidates)
#   qualified_arr = []
#   @candidates.each do |candidate|
#     if experienced?(candidate) &&
#       candidate[:github_points] >= 100 &&
#       (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
#       candidate[:date_applied] >= (Date.today - 15) &&
#       candidate[:age] >= 18
#       qualified_arr.push(candidate)
#     end
#   end
#   qualified_arr
# end


def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) &&
      candidate[:github_points] >= 100 &&
      (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
      candidate[:date_applied] >= (Date.today - 15) &&
      candidate[:age] >= 18
  end
end
  
  # More methods will go below

def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end

puts experienced?(@candidates[0])
puts find(25)
puts qualified_candidates(@candidates)
puts ordered_by_qualifications(@candidates)

# puts @candidates