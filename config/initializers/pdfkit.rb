# config/initializers/pdfkit.rb
PDFKit.configure do |config|
# config.wkhtmltopdf = "#{}"Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?

if RUBY_PLATFORM =~ /linux/
    wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
  elsif RUBY_PLATFORM =~ /darwin/
    wkhtmltopdf_executable = 'wkhtmltopdf-osx'
  else
    raise "Unsupported. Must be running linux or intel-based Mac OS."
  end
  config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s
end

# Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?
  config.wkhtmltopdf = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost" 
end

