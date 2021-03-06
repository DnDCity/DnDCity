require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CharacterLevelsController do

  # This should return the minimal set of attributes required to create a valid
  # CharacterLevel. As you add validations to CharacterLevel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "character" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CharacterLevelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all character_levels as @character_levels" do
      character_level = CharacterLevel.create! valid_attributes
      get :index, {}, valid_session
      assigns(:character_levels).should eq([character_level])
    end
  end

  describe "GET show" do
    it "assigns the requested character_level as @character_level" do
      character_level = CharacterLevel.create! valid_attributes
      get :show, {:id => character_level.to_param}, valid_session
      assigns(:character_level).should eq(character_level)
    end
  end

  describe "GET new" do
    it "assigns a new character_level as @character_level" do
      get :new, {}, valid_session
      assigns(:character_level).should be_a_new(CharacterLevel)
    end
  end

  describe "GET edit" do
    it "assigns the requested character_level as @character_level" do
      character_level = CharacterLevel.create! valid_attributes
      get :edit, {:id => character_level.to_param}, valid_session
      assigns(:character_level).should eq(character_level)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CharacterLevel" do
        expect {
          post :create, {:character_level => valid_attributes}, valid_session
        }.to change(CharacterLevel, :count).by(1)
      end

      it "assigns a newly created character_level as @character_level" do
        post :create, {:character_level => valid_attributes}, valid_session
        assigns(:character_level).should be_a(CharacterLevel)
        assigns(:character_level).should be_persisted
      end

      it "redirects to the created character_level" do
        post :create, {:character_level => valid_attributes}, valid_session
        response.should redirect_to(CharacterLevel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved character_level as @character_level" do
        # Trigger the behavior that occurs when invalid params are submitted
        CharacterLevel.any_instance.stub(:save).and_return(false)
        post :create, {:character_level => { "character" => "invalid value" }}, valid_session
        assigns(:character_level).should be_a_new(CharacterLevel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CharacterLevel.any_instance.stub(:save).and_return(false)
        post :create, {:character_level => { "character" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested character_level" do
        character_level = CharacterLevel.create! valid_attributes
        # Assuming there are no other character_levels in the database, this
        # specifies that the CharacterLevel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CharacterLevel.any_instance.should_receive(:update).with({ "character" => "" })
        put :update, {:id => character_level.to_param, :character_level => { "character" => "" }}, valid_session
      end

      it "assigns the requested character_level as @character_level" do
        character_level = CharacterLevel.create! valid_attributes
        put :update, {:id => character_level.to_param, :character_level => valid_attributes}, valid_session
        assigns(:character_level).should eq(character_level)
      end

      it "redirects to the character_level" do
        character_level = CharacterLevel.create! valid_attributes
        put :update, {:id => character_level.to_param, :character_level => valid_attributes}, valid_session
        response.should redirect_to(character_level)
      end
    end

    describe "with invalid params" do
      it "assigns the character_level as @character_level" do
        character_level = CharacterLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CharacterLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => character_level.to_param, :character_level => { "character" => "invalid value" }}, valid_session
        assigns(:character_level).should eq(character_level)
      end

      it "re-renders the 'edit' template" do
        character_level = CharacterLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CharacterLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => character_level.to_param, :character_level => { "character" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested character_level" do
      character_level = CharacterLevel.create! valid_attributes
      expect {
        delete :destroy, {:id => character_level.to_param}, valid_session
      }.to change(CharacterLevel, :count).by(-1)
    end

    it "redirects to the character_levels list" do
      character_level = CharacterLevel.create! valid_attributes
      delete :destroy, {:id => character_level.to_param}, valid_session
      response.should redirect_to(character_levels_url)
    end
  end

end
