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
            ["/scuola/successi", "Successi"],
            ["/scuola/info_burocratiche", "Info Burocratiche"],
            ["/scuola/regolamento", "Regolamento"]]
  end
end
