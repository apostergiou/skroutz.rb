# -*- mode: ruby -*-
# vi: set ft=ruby :

def reload!
  Object.send(:remove_const, :Skroutz)

  $LOADED_FEATURES.find_all { |file| file =~ %r{\/skroutz\.rb\/} }.
                   each(&method(:load)).
                   any?
end
