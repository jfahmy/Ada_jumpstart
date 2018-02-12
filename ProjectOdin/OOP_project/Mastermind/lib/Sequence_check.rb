class Sequence_check
  def initialize(input_array, secret_sequence)
    @input_array = input_array
    @secret_sequence = secret_sequence
  end

  def matches
    [index_matches, other_matches]
  end

  def results
    [index_matches.size, other_matches.size]
  end

  private

  attr_reader :input_array, :secret_sequence

  def index_matches
    input_array.select.with_index { |e, i| e == secret_sequence[i] }
  end

  def other_matches
    non_exact_input & non_exact_sequence
  end

  def non_exact_input
    array_difference(input_array, index_matches)
  end

  def non_exact_sequence
    array_difference(secret_sequence, index_matches)
  end

  # This method is based on https://stackoverflow.com/a/3852809/5961578
  def array_difference(array_1, array_2)
    counts = array_2.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
    array_1.reject { |e| counts[e] -= 1 unless counts[e].zero? }
  end
end
