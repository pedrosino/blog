class Unidade < ActiveRecord::Base
  #has_many: edital

  validate :sigla_length

  def sigla_length
    if sigla.length > 5
      errors.add(:sigla, "não pode ter mais que 5 caracteres")
    end
  end
end
