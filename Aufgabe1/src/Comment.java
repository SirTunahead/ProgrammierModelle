
public class Comment {
    private Long time;
    private String user;
    private String name;



    public void setName(String name) {
        this.name = name;
    }
    public void setUser(String user) {
        this.user = user;
    }
    public void setTime(Long time) {
        this.time = time;
    }

    public String getName() { return name; }
    public String getUser() {
        return user;
    }
    public Long getTime() { return time; }


}
