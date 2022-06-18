def tf(term, document)
  document.split(/[\s-]/).count { |word| word.downcase == term }
end