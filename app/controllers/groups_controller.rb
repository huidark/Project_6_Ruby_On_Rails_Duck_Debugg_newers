class GroupsController < ApplicationController
    def index
        @Groups = Group.all
    end

    def new
      @group = Group.new
    end

end
