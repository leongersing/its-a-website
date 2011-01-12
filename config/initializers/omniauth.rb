Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'vFcKaG6Ci5sNgsfQscdQ', 'iqLGgTypYcnONMcZgtgKNJGLLAvcWp3ETFrdnqPpSc'
end

module OmniAuth
  module Strategy
    def callback_url
      full_host + "#{OmniAuth.config.path_prefix}/#{name}/callback?return_to=#{request.params['return_to'] || request.referer}"
    end
  end
end