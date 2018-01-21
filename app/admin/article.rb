ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :source, :source_url, :heading, :content, :section_start_heading, :image_description, :category, :section_footer, sections_attributes: [:content, :position, :_destroy, :id, :heading]
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
			f.input :content, input_html: { class: "tinymce", rows: "40", cols: "120" }
			f.input :category
			f.input :image_description, as: :file, hint: image_tag(f.object.image_description.url(:thumb))
			f.input :section_start_heading
			f.input :section_footer
			f.input :source
			f.input :source_url
		end

		f.inputs "Sections" do 
			f.has_many :sections, allow_destroy: true do |section|
				section.input :heading
				section.input :content, input_html: { class: "tinymce", rows: "40", cols: "120" }
				section.input :position
				section.input :image_description, as: :file, hint: image_tag(section.object.image_description.url(:thumb))
			end
		end

		f.actions
	end

	index do 
		id_column
		column :heading
		column ("content") { |article| article.content[0..100]}
		column :category
		column :image_description
		actions
	end

end
