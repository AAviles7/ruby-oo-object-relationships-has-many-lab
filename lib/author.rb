class Author
    attr_accessor :name, :posts
    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all.push(@posts)
    end

    def add_post(post)
        if post.author != self
            post.author = self
        end
        @posts.push(post)
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        @posts.push(post)
    end

    def self.post_count
        temp = @@all.select{|post, author| post.class == Post}
        return temp.length
    end

end