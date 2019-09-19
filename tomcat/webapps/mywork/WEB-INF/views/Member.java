package member;

public class Member {
    private int id;
    private String name;
    private int level;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getLevel() {
        return level;
    }
    public void setLevel(int setLevel) {
        this.level = level;
    }

    public Member(int id, String name, int level) {
        this.id = id;
        this.name = name;
        this.level = level;
    }
}