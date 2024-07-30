module Problems
  module String
    class Convert
      def run(time_str)
        # Valores padrão
        hours = 0
        minutes = 0
        seconds = 0

        # Extração de horas, minutos e segundos
        time_str.scan(/(\d+)([hms])/) do |value, unit|
          case unit
          when 'h'
            hours = value.to_i
          when 'm'
            minutes = value.to_i
          when 's'
            seconds = value.to_i
          end
        end

        total_seconds = (hours * 3600) + (minutes * 60) + seconds
      end
    end
  end
end