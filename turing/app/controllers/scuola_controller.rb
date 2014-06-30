class ScuolaController < ApplicationController
  def storia
  end

  def obiettivi
  end

  # url
  # name
  def aside
    return [["/scuola/storia", "Storia"],
            ["/scuola/obiettivi", "Obiettivi"],
            ["#", "Successi"],
            ["#", "Info Burocratiche"],
            ["#", "Regolamento"]]
  end
end
