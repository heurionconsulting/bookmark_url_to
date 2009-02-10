# BookmarkUrlTo
  module BookmarkUrlTo 
      def apply_bookmark_url_to(url,title,sites=[:all],options = {})
         visibility_text=""
         unless options[:text].nil?
          visibility_text =options[:text]
        end
        visibility_type="image"
        unless options[:visibility_type].nil?
         visibility_type=options[:visibility_type].downcase
        end
         if sites.size == 1 && sites[0]==:all
          sites = [:blinkbits,:blinklist,:blogmarks,:blogmemes,:bluedot,:bumpzee,:comments,:connotea,:delicious,:delirious,:digg,:diigo,:dotnetkicks,:dzone,:fark,:facebook,:favorites,:feedmelinks,:fleck,:friendsite,:furl,:google,:icerocket,:kaboodle,:linkagogo,:live,:magnolia,:mailto,:maple,:misterwong,:myspace,:netscape,:netvouz,:newsvine,:plugim,:popcurrent,:propeller,:rawsugar,:reddit,:rojo,:shoutwire,:simpy,:skirt,:slashdot,:sphere,:spurl,:squidoo,:stumbleupon,:taggly,:tailrank,:technorati,:thisnext,:twitter,:webride,:wists,:vigillar,:yahoo]
         end
         output = "<div id='bookmark_url_to'><div id='bookmark_url_to_text'>#{visibility_text}</div>"
         for type in sites
          href = ""
          case type
            when :mailto
              href = "mailto:?subject=#{title}-#{url}"
            when :digg
              href = "http://digg.com/submit?phase=2&url=#{url}&title=#{title}"
            when :delicious
              href = "http://del.icio.us/post?url=#{url}&title=#{title}"
            when :facebook
              href="http://www.facebook.com/sharer.php?u=#{url}&t=#{title}"
            when :google
              href="http://www.google.com/bookmarks/mark?op=add&bkmk=#{url}&title=#{title}"
            when :stumbleupon
              href = "http://www.stumbleupon.com/submit?url=#{url}&title=#{title}"
            when :propeller
              href="http://www.propeller.com/submit/?U=#{url}&T=#{title}"
            when :vigillar
              href = "http://vigillar.se/submit?edit[url]=#{url}&edit[title]=#{title}"
            when :reddit
              href="http://reddit.com/submit?url=#{url}&title=#{title}"
            when :magnolia
              href = "http://ma.gnolia.com/bookmarklet/add?url=#{url}&title=#{title}"
            when :newsvine
              href="http://www.newsvine.com/_tools/seed&save?u=#{url}&h=#{title}"
            when :furl
              href="http://www.furl.net/storeIt.jsp?u=#{url}&t=#{title}"
            when :yahoo
              href="http://myweb2.search.yahoo.com/myresults/bookmarklet?u=#{url}&t=#{title}"
            when :technorati
              href="http://technorati.com/cosmos/search.html?url=#{url}"
            when :icerocket
              href="http://blogs.icerocket.com/search?q=#{url}"
            when :blinkbits        
              href="http://blinkbits.com/bookmarklets/save.php?v=1&source_url=#{url}&title=#{title}"
            when :blinklist
              href="http://blinklist.com/index.php?Action=Blink/addblink.php&Name=#{title}&Description=#{title}&Url=#{url}"
            when :blogmarks
              href="http://blogmarks.net/my/new.php?mini=1&simple=1&url=#{url}&title=#{title}"
            when :blogmemes
              href="http://www.blogmemes.net/post.php?url=#{url}&title=#{title}"
            when :bluedot
              href="http://bluedot.us/Authoring.aspx?u=#{url}&t=#{title}"
            when :bumpzee
              href="http://www.bumpzee.com/bump.php?u=#{url}"
            when :comments
              href="http://co.mments.com/track?url=#{url}&title=#{title}"
            when :connotea
              href="http://www.connotea.org/addpopup?continue=confirm&uri=#{url}&title=#{title}"
            when :delirious
              href="http://de.lirio.us/login/?action=add&address=#{url}&title=#{title}"
            when :diigo
              href="http://www.diigo.com/post?url=#{url}&title=#{title}"
            when :dotnetkicks
              href="http://www.dotnetkicks.com/kick/?url=#{url}&title=#{title}"
            when :dzone
              href="http://www.dzone.com/links/add.html?description=#{title}&url=#{url}&title=#{title}"
            when :fark
              href="http://cgi.fark.com/cgi/fark/edit.pl?new_url=#{url}&new_comment=#{title}&new_comment=#{title}&linktype=Misc"
            when :feedmelinks
              href="http://feedmelinks.com/categorize?from=toolbar&op=submit&name=#{title}&url=#{url}&version=0.7"
            when :fleck
              href="http://extension.fleck.com/?v=b.0.804&url=#{url}"
            when :friendsite
              href="http://FriendSite.com/users/bookmarks/?u=#{url}&t=#{title}"
            when :kaboodle
              href="http://www.kaboodle.com/za/selectpage?p_pop=false&pa=url&u=#{url}"
            when :linkagogo 
              href="http://www.linkagogo.com/go/AddNoPopup?url=#{url}&title=#{title}"
            when :maple
              href="http://www.maple.nu/submit.php?url=#{url}"
            when :misterwong
              href="http://www.mister-wong.com/index.php?action=addurl&bm_url=#{url}&bm_description=#{title}"
            when :netscape
              href="http://www.netscape.com/submit/?U=#{url}&T=#{title}"
            when :netvouz
              href="http://netvouz.com/action/submitBookmark?url=#{url}&title=#{title}&popup=no"
            when :plugim
              href="http://www.plugim.com/submit?url=#{url}&title=#{title}"
            when :popcurrent
              href="http://popcurrent.com/submit?url=#{url}&title=#{title}"
            when :rawsugar
              href="http://www.rawsugar.com/tagger/?turl=#{url}&tttl=#{title}"
            when :rojo
              href="http://www.rojo.com/add-subscription/?resource=#{url}</"
            when :simpy
              href="http://www.simpy.com/simpy/LinkAdd.do?href=#{url}&title=#{title}"
            when :skirt
              href="http://www.sk-rt.com/submit.php?url=#{url}"
            when :slashdot
              href="http://slashdot.org/bookmark.pl?url=#{url}&title=#{title}"
            when :shoutwire
              href="http://www.shoutwire.com/?p=submit&link=#{url}"
            when :squidoo
              href="http://www.squidoo.com/lensmaster/bookmark?#{url}"
            when :sphere
              href="http://www.sphere.com/search?q=sphereit:#{url}&title=#{title}"
            when :spurl
              href="http://www.spurl.net/spurl.php?url=#{url}&title=#{title}"
            when :taggly
              href="http://taggly.com/bookmarks.php/pass?action=add&address=#{url}"
            when :tailrank
              href="http://tailrank.com/share/?title=#{title}&link_href=#{url}"
            when :thisnext
              href="http://www.thisnext.com/pick/new/submit/sociable/?url=#{url}&name=#{title}"
            when :webride
              href="http://webride.org/discuss/split.php?uri=#{url}&title=#{title}"
            when :wists
              href="http://www.wists.com/t.php?c=null&r=#{url}&u=#{url}&title=#{title}"
            when :favorites
              href="javascript:window.external.AddFavorite(\"#{url}\",\"#{title}\");"
            when :live   
              href="http://favorites.live.com/"
            when :myspace
              href="http://www.myspace.com/Modules/PostTo/Pages/?u=#{url}&t=#{title}"
            when :twitter
              href="http://twitter.com/home?status=Add+This:+#{url}"
            end
            
          site_text = type
          unless options[:site_text].nil?
            unless options[:site_text][type].nil?
              site_text =options[:site_text][type]
            end
          end
           unless href.empty? 
              output << "<div class='bookmark_url_to_element'><a href='#{href}'>"
              case visibility_type
                when "image"
                  output << "<img src='/images/bookmark_url_to/#{type}.png' alt='submit to #{site_text}' />"
                when  "text"
                  output << "#{site_text}"
                when "both"
                  output << "<img src='/images/bookmark_url_to/#{type}.png' alt='submit to #{site_text}' />#{site_text}"
                else
                  output << "<img src='/images/bookmark_url_to/#{type}.png' alt='submit to #{site_text}' />" 
                end  
              output << "</a></div>"
           end
         end
         output << "</div>"
         output
        end
    end
