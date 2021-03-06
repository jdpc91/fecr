require 'facturacr/document'

module FE
 
  class Invoice < Document
    
    def initialize(args={})
      @activity_code = args[:activity_code]
      @date = args[:date]
      @issuer = args[:issuer]
      @receiver = args[:receiver]
      @items = args[:items]
      @number = args[:number]
      @condition = args[:condition]
      @payment_type = args[:payment_type] || "01"
      @document_type = "01"
      @credit_term = args[:credit_term]
      @summary = args[:summary]
      @regulation = args[:regulation] ||= FE::Document::Regulation.new
      @others = args[:others]
      @other_charges = args[:other_charges]
      @security_code = args[:security_code]
      @document_situation = args[:document_situation]
      @namespaces = {
        "xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", 
        "xmlns:xsd"=>"http://www.w3.org/2001/XMLSchema",
        "xmlns"=>"https://cdn.comprobanteselectronicos.go.cr/xml-schemas/v4.3/facturaElectronica"#,
        #"xsi:schemaLocation"=>"https://tribunet.hacienda.go.cr/docs/esquemas/2017/v4.2/facturaElectronica https://tribunet.hacienda.go.cr/docs/esquemas/2017/v4.2/facturaElectronica.xsd"
      }
    end
    
    def document_tag
      "FacturaElectronica"
    end
    
  end 
end
