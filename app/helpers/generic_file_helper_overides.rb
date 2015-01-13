# -*- coding: utf-8 -*-
module GenericFileHelperOverrides 

  def required?(key)
    # [:title, :creator, :tag, :rights].include?(key)
    return false
  end
end