class Professor < ApplicationRecord
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end
    
    def new
         @professor = Professor.new
    end

    def create
        @professor = Professor.new(FirstName: "...", LastName: "...")

        if @professor.save
            redirect_to @professor
        else
            render :new
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to root_path
    end
end
