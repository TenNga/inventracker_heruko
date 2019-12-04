class Api::V1::UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end
    
    def show
        user = User.find(params[:id])

        render json: user, include: '**'
    end

    def create
       user = User.create(user_params)
        createDefaultFolder(user)
       render json: user
    end

    private 

    def user_params
        params.permit(:user_name,:first_name,:last_name,:password)
    end

    def createDefaultFolder(u) 
        f1 = Folder.create(name: "Drinks",user_id: u.id)
            f2 = Folder.create(name: "Cold Drinks", folder_id: f1.id, user_id: u.id)
                p1 = Product.create(name: "Coke", image: "http://www.premiumlogistics-sl.com/wp-content/uploads/2015/07/products-corrugated-stock-boxes-shipping-kraft-shorr-packaging_0.jpg", quantity: 2, price: 1, description: "Coka Cola", note: "Can soda", folder_id: f2.id)
        f3 = Folder.create(name: "Supplies", user_id: u.id);
            f5 = Folder.create(name: "Restroom", folder_id: f3.id, user_id: u.id);
                f6 = Folder.create(name: "Cleaning", folder_id: f5.id, user_id: u.id);
                 f7 = Product.create(name: "XYZ remover", image: "http://www.premiumlogistics-sl.com/wp-content/uploads/2015/07/products-corrugated-stock-boxes-shipping-kraft-shorr-packaging_0.jpg", quantity: 10, price: 50, description: "Clean all the things", note: "20Oz cleaner", folder_id: f6.id)
        f8 = Folder.create(name: "Other", user_id: u.id);
        f9 = Folder.create(name: "Food",user_id: u.id)
    end

end
