def extract_urls(text)
    url_regex = /(https?:\/\/[\w\-.]+\.\w+(\/[\w\-.]*)*(\?[\w%&=]*)?(#[\w-]*)?)/

    urls = text.scan(url_regex).flatten

    urls.each { |url| puts url }
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don't forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)