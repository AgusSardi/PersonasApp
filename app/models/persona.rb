class Persona < ApplicationRecord

  # Validaciones (para los errores)
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :fecha_nacimiento, presence: true
  validates :nro_dni, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 99_999_999 }, uniqueness: true

  validate :fecha_nacimiento_no_futura

  # Creo esta método para verificar que no se ingrese una fecha futura
  def fecha_nacimiento_no_futura
    if fecha_nacimiento.present? && fecha_nacimiento > Date.today
      errors.add(:fecha_nacimiento, "no puede estar en el futuro")
    end
  end

  def edad #metodo de instancia
    # Si no se ingresa la fecha de nacimiento retorna directamente nil
    return unless fecha_nacimiento

    #Si se ingresa la fecha de nacimiento continúa con la ejecución del método

    now = Time.now.utc.to_date     # Se obtiene la fecha y hora actual en UTC (Tiempo Universal Coordinado)
    # Esta se convierte a fecha (sin la hora)

    now.year - fecha_nacimiento.year - (now < fecha_nacimiento + (now.year - fecha_nacimiento.year).years ? 1 : 0)
    # now.year - fecha_nacimiento.year = Calcula la diferencia en años
    # (now < fecha_nacimiento + (now.year - fecha_nacimiento.year).years = Verifica si la fecha actual es anterior a la fecha de su cumpleaños (del mismo año)
    # ? 1 : 0 = Si la expresión anterior es verdadera (fecha actual anterior al cumpleaños), retorna un 1. En caso contrario retorna un 0
    #
    # Es decir que se ajusta la diferencia inicial de años según si ya cumplió o no en el año actual
  end

  def self.promedio_edad # metodo de clase
    return 0 if count == 0
    all.map(&:edad).compact.sum / count # Resultado = entero
  end
end
