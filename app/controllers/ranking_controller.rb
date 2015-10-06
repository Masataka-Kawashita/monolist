class RankingController < ApplicationController
    def have
        @items = Have.select("item_id, count(1) as have_count,items.*").group("item_id").order("have_count DESC").joins("LEFT OUTER JOIN items ON items.id = ownerships.item_id")
    end
    
    def want
        
    end
end
