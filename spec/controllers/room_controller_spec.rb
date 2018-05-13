require 'rails_helper'

RSpec.describe Room, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe RoomsController, type: :controller do
    it { should route(:get, '/rooms').to(action: :index) }
    it { should route(:get, '/rooms/2').to(action: :show, id: 2) }
    it { should route(:get, '/rooms/new').to(action: :new)}
    it { should route(:get, '/rooms/2/edit').to(action: :edit, id: 2) }
    it { should route(:post, '/rooms').to(action: :create) }
    it { should route(:patch, '/rooms/5').to(action: :update, id: 5) }
    it { should route(:delete, '/rooms/8').to(action: :destroy, id: 8) }

  describe 'POST#create' do
    before {post :create }

    it { should redirect(users_path)}
    end    
  end

end

