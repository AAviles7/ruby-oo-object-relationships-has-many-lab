class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def author=(author)
       author.posts.push(self)
       @author = author
    end

    def author_name
        if @author == nil
            return nil
        end
        return author.name
    end

end