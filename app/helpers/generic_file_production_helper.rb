module GenericFileProductionHelper
  def production_names
    ProductionCredits::Production.order(:production_name).pluck(:production_name)
  end

  def venue_names
    names = ProductionCredits::Venue.pluck(:name)
    productions = ProductionCredits::Production.where("venue_alias != ''")
    venue_aliases = productions.map{|production| "#{production.venue_alias} (#{production.venue.name})"}
    names.concat venue_aliases
    names.compact.sort
  end
end
