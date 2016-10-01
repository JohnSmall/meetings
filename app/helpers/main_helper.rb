module PublicViewHelper
 def build_flag_links
   #work out the base hostname
   result=""
   base_host = request.host_with_port.split('.').reject{|h| I18n.available_locales.include?(h.to_sym)}.join('.')
   I18n.available_locales.each do | locale |
     if locale == I18n.default_locale
       link_host = base_host
     else
       link_host = locale.to_s+'.'+base_host
     end
     result+=link_to(image_tag("#{locale}.png"),"#{request.protocol}#{link_host}#{request.fullpath}",class: 'pull-right')  
   end  
   raw result 
 end 
end
