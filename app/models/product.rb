class Product < ActiveRecord::Base
  attr_accessible :title, :asin, :amazon_ref, :amazon_img, :price,
  :description, :img_height, :img_width

  # has_many :users

  def is_approved(votes, group)
    if votes > (group.length / 2)
      return true
    end
  end

  def self.amazon_request(product)

    current_time = DateTime.now.utc.strftime("%FT%TZ")
    item = product #.split(" ").join

    params = {
            "Service" => "AWSECommerceService",
            "AWSAccessKeyId" => ENV['AMAZON_KEY'],
            "AssociateTag" => ENV['AMAZON_ASSOCIATE_TAG'],
            "Condition" => "All",
            "Keywords" => item,
            # "ContentType" => json,
            "Operation" => "ItemSearch",
            "SearchIndex" => "Blended",
            "Timestamp" => current_time
            }

    secret_key = ENV['AMAZON_SECRET']
    data = ['GET', 'webservices.amazon.com', '/onca/xml', params.to_query].join("\n")

    sha256 = OpenSSL::Digest::SHA256.new
    sig = OpenSSL::HMAC.digest(sha256, secret_key, data)
    signature = Base64.encode64(sig)

    signature_hash = { "Signature" => signature }

    request_url = "http://webservices.amazon.com/onca/xml?"

    formatted_request = request_url + params.to_query + "&" + signature_hash.to_query.chomp.gsub(/%0A/,'')

    request = Typhoeus.get(formatted_request).body
    p request

  end

  def self.get_amazon_attribs(product_obj)
      # call it with rails c:  Product.get_amazon_attribs(product_obj)
    xml_doc = Product.amazon_request(product_obj)

    doc = Nokogiri::XML(xml_doc)
    doc.remove_namespaces!
    binding.pry
    amazon_attribs = {}

    doc.search('//some/path')
  end

end
