module Clusters
	class Rapid < Cluster
		def initialize args = {}
			super
			@delay = SETTINGS.clusters(:rapid)[:delay]
			side = [:left, :right].sample
			20.times do
				enemy_class = [Enemies::Normal, Enemies::Zombie, Enemies::Wizard].sample
				@enemies << enemy_class.new(
					cluster: self,
					side:    side,
					delay:   @delay
				)
			end
		end
	end
end
