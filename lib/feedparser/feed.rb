# encoding: utf-8

module FeedParser

class Feed

  attr_accessor :format   # e.g. atom|rss 2.0|json etc.
  attr_accessor :title
  attr_accessor :url        ## todo - add alias site_url/home_page_url/page_url - why? why not??
  attr_accessor :feed_url


  attr_accessor :items
  attr_accessor :authors

  ## add author  shortcut e.g. equals authors[0] - for now only read only
  ##   fix: also add author=  why? why not???
  def author() @authors[0]; end



  def summary?()  @summary.nil? == false;  end
  attr_accessor :summary        # e.g. description (rss)|subtitle (atom)

  ##
  ##  todo/check/fix:
  ##     use a extra field for atom subtitle
  ##      - subtitle not the same as summary - why? why not?
  ##      -  assume summary == description == abstract but
  ##            keep subtitle separate e.g. assume subtitle is just a (simple) single line
  ##
  ##  for now alias summary to subtitle
  alias :subtitle  :summary
  alias :subtitle= :summary=
  alias :subtitle? :summary?



  def updated?()  @updated.nil? == false;  end
  attr_accessor :updated        # e.g. lastBuildDate (rss)|updated (atom)

  def published?()  @published.nil? == false;  end
  attr_accessor :published      # e.g. pubDate (rss)\n/a (atom)  -- note: published is basically an alias for created


  attr_accessor :generator
  attr_accessor :generator_version  # e.g. @version (atom)
  attr_accessor :generator_url      # e.g. @uri     (atom)

  ## note: generator_uri is an alias for generator_url
  alias :generator_uri  :generator_url
  alias :generator_uri= :generator_url=



  ## fix:
  #  add pretty printer/inspect (exclude object)

end  # class Feed

end # module FeedParser
