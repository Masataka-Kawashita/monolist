class RankingController < ApplicationController
    def have
        @items = Have.select("item_id, count(1) as have_count,items.*").group("ownerships.item_id,items.id").order("have_count DESC").joins("LEFT OUTER JOIN items ON items.id = ownerships.item_id").limit(10)
    end
    
    def want
       @items = Want.select("item_id, count(1) as want_count,items.*").group("ownerships.item_id,items.id").order("want_count DESC").joins("LEFT OUTER JOIN items ON items.id = ownerships.item_id").limit(10)
    end
end
