require 'rails_helper'


RSpec.describer CapysController, type :controller do
    RSpec.describe UsersController, :type => :controller do

  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password"
        post :create, user: {email: "chrisv.email"}
        expect(response).to render_template(:new)
      it "validates that the password is at least 6 characters long"
        post :create, user: {email: "chrisv.email", password: "123"}
        expect(response).to render_template(:new)
    end

    context "with valid params" do
      it "redirects user to bands index on success"
                post :create, user: {email: "chrisv.email", password: "fasdfsafd"}
                 expect(response).to redirect_to(user_url(User.find_by(email: "chrisv.email")))
    end
  end
end

end