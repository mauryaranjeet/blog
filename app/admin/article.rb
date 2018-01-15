ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :heading, :content, :image_description, sections_attributes: [:content, :position, :_destroy, :id]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form do |f|
		f.inputs "Article Details" do
			f.input :heading
			f.input :content
			f.input :image_description, as: :file, hint: image_tag(f.object.image_description.url(:thumb))
		end

		f.inputs "Sections" do 
			f.has_many :sections, allow_destroy: true do |section|
				section.input :content
				section.input :position
				section.inputs "Section Images" do 
					section.has_many :section_images do |section_image|
						section_image.input :title
					end
				end
			end
		end

		f.actions
	end

end
