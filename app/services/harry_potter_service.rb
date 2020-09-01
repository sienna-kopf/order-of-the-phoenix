class HarryPotterService
  def search_members(house)
    results = conn.get("https://www.potterapi.com/v1/characters?key=#{ENV['HARRY_POTTER_API_KEY']}&house=#{house}&orderOfThePhoenix=true")
    JSON.parse(results.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com')
  end
end
