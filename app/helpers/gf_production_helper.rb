module GfProductionHelper
  def production_names
    ProductionCredits::Production.all.collect(&:production_name)
  end
end