class AddUncategorizedAspect < ActiveRecord::Migration[5.2]
  def change
    t = Topic.find_or_create_by(name: 'Uncategorized')
    t.aspects << Aspect.find_or_create_by(name: 'Uncategorized')
  end
end
