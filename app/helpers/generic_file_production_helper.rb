module GenericFileProductionHelper
  def production_names
    ProductionCredits::Production.pluck(:production_name).sort
  end
end
