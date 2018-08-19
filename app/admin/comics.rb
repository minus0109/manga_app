ActiveAdmin.register Comic do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :author, :org_author, :overview, :image, application_comics_attributes: [:id, :comic_id, :application_id, :_destroy]

form do |f|
  f.inputs '本登録' do
    f.input :name
    f.input :author
    f.input :org_author
    f.input :overview
    f.input :image
    f.has_many :application_comics, allow_destroy: true, heading: false,
    new_record: true do |ab|
      ab.input :application_id,
               label: 'アプリ',
               as: :select,
               collection: Application.all.map { |a| [a.name, a.id] }
             end
             f.actions
  end
end

end
