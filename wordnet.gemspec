# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{wordnet}
  s.version = "0.99.0.20110515003630"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Michael Granger}]
  s.date = %q{2011-05-14}
  s.description = %q{This library is a Ruby interface to WordNet®. WordNet® is an online lexical
reference system whose design is inspired by current psycholinguistic theories
of human lexical memory. English nouns, verbs, adjectives and adverbs are
organized into synonym sets, each representing one underlying lexical
concept. Different relations link the synonym sets.

It uses WordNet-SQL, which is a conversion of the lexicon flatfiles into a relational database format. You can either install the 'wordnet-defaultdb' gem, which packges up the SQLite3 version of WordNet-SQL, or install your own and point the lexicon at it by passing a Sequel URL to the constructor.

TO-DO: More details and better writing later.}
  s.email = [%q{ged@FaerieMUD.org}]
  s.extra_rdoc_files = [%q{History.md}]
  s.files = [%q{ChangeLog}, %q{LICENSE}, %q{README.md}, %q{Rakefile}, %q{examples/addLacedBoots.rb}, %q{examples/clothesWithCollars.rb}, %q{examples/clothesWithTongues.rb}, %q{examples/distance.rb}, %q{examples/domainTree.rb}, %q{examples/gcs.rb}, %q{examples/holonymTree.rb}, %q{examples/hypernymTree.rb}, %q{examples/hyponymTree.rb}, %q{examples/memberTree.rb}, %q{examples/meronymTree.rb}, %q{lib/wordnet.rb}, %q{lib/wordnet/constants.rb}, %q{lib/wordnet/lexicon.rb}, %q{lib/wordnet/synset.rb}, %q{lib/wordnet/synset_pointer.rb}, %q{spec/lib/helpers.rb}, %q{spec/wordnet/lexicon_spec.rb}, %q{spec/wordnet/synset_pointer_spec.rb}, %q{spec/wordnet/synset_spec.rb}, %q{History.md}]
  s.homepage = %q{http://deveiate.org/projects/Ruby-WordNet}
  s.licenses = [%q{BSD}]
  s.post_install_message = %q{
If you don't already have a WordNet database installed somewhere, 
you'll need to either download and install one from:

   http://wnsql.sourceforge.net/

or just install the 'wordnet-defaultdb' gem, which will install
the SQLite version for you.

}
  s.rdoc_options = [%q{--use-cache}, %q{--protected}, %q{--verbose}, %q{--title}, %q{WordNet for Ruby}]
  s.require_paths = [%q{lib}]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{wordnet}
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{This library is a Ruby interface to WordNet®}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sequel>, ["~> 3.18.0"])
      s.add_runtime_dependency(%q<sqlite3-ruby>, ["~> 1.3.2"])
      s.add_development_dependency(%q<hoe-mercurial>, ["~> 1.2.1"])
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.4"])
    else
      s.add_dependency(%q<sequel>, ["~> 3.18.0"])
      s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.2"])
      s.add_dependency(%q<hoe-mercurial>, ["~> 1.2.1"])
      s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_dependency(%q<hoe>, [">= 2.9.4"])
    end
  else
    s.add_dependency(%q<sequel>, ["~> 3.18.0"])
    s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.2"])
    s.add_dependency(%q<hoe-mercurial>, ["~> 1.2.1"])
    s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
    s.add_dependency(%q<rspec>, ["~> 2.2.0"])
    s.add_dependency(%q<hoe>, [">= 2.9.4"])
  end
end
