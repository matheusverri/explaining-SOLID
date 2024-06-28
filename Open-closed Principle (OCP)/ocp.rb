#Código ruim (a classe precisa ser alterada toda vez que um novo formato de relatório é adicionado)
class Report
  def initialize(data)
    @data = data
  end

  def generate(format)
    case format
    when :pdf
      # código para gerar relatório em PDF
    when :csv
      # código para gerar relatório em CSV
    end
  end
end

#Código bom (para adicionar um novo formato, basta criar uma nova classe, sem alterar a original)
class Report
  def initialize(data)
    @data = data
  end

  def generate(formatter)
    formatter.format(@data)
  end
end

class PdfFormatter
  def format(data)
    # código para formatar dados em PDF
  end
end

class CsvFormatter
  def format(data)
    # código para formatar dados em CSV
  end
end
