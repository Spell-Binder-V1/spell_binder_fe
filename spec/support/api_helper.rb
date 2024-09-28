module ApiHelper
  def api_base_url
    ENV['SPELLBINDER_BASE_URL'] || 'http://localhost:3001'
  end

  def api_endpoint(path)
    "#{api_base_url}/api/v0/#{path}"
  end
end