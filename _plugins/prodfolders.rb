module Jekyll
	Jekyll::Hooks.register :productions, :post_render do |production|
		prod_dir = '_shows/'+ production.data['slug']
		system 'mkdir', '-p', prod_dir 
		if Dir.empty?(prod_dir) then
			system('touch ' + prod_dir + '/.gitkeep')
		end
	end 
end
