module SPTrans
  API_URL = "http://api.olhovivo.sptrans.com.br/v0"

  def self.connect(client)
    token = "5e20a6e514afa82121420017cbaf867bc2fca8b13c30f76b3c179f42f10ae486"

    begin
      client.post("#{API_URL}/login/autenticar?token=#{token}", {})
    rescue Exception => e
      puts "Problema na conexão."
      puts e.message
      puts e.backtrace.inspect
    end
  end
end
