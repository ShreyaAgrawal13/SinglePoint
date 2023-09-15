package hays.Single.User;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.Collections;
import java.sql.Date;

@Entity

public class Users implements UserDetails {
    @Id
    @GeneratedValue( strategy = GenerationType.SEQUENCE)
    private Long id;
    @Column
    private String password;

    @Column
    private String email;

    @Column
    private String token;

    @Column
    private String firstName;

    @Column
    private String middleName;

    @Column
    private String lastName;

    @Column
    private Date dateOfJoining;

    @Column
    private Long employeeID;

    @Column
    private String jobTitle;

    @Column
    private String role;

    @Column
    private String project;

    @Column
    private String leadManager;

    @Column
    private String gender;

    @Enumerated(EnumType.STRING)
    @Column
    private UserRoles userRoles;

    @Column(columnDefinition = "BLOB")
    private byte[] image;


    public Users(String password, String email, UserRoles userRoles,
                 String firstName, String middleName, String lastName,
                 Date dateOfBirth, Date dateOfJoining, Long employeeID, String jobTitle,
                 String role, String project, String leadManager, String gender, byte[] image) {
        this.password = password;
        this.email = email;
        this.userRoles = userRoles;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.dateOfJoining = dateOfJoining;
        this.employeeID = employeeID;
        this.jobTitle = jobTitle;
        this.role = role;
        this.project = project;
        this.leadManager = leadManager;
        this.gender = gender;
        this.image = image;
    }
    public Users(){

    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority =
                new SimpleGrantedAuthority(userRoles.name());
        return Collections.singletonList(authority);
    }

    @Override
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public UserRoles getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(UserRoles userRoles) {
        this.userRoles = userRoles;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDateOfJoining() {
        return dateOfJoining;
    }

    public void setDateOfJoining(Date dateOfJoining) {
        this.dateOfJoining = dateOfJoining;
    }

    public Long getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(Long employeeID) {
        this.employeeID = employeeID;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getLeadManager() {
        return leadManager;
    }

    public void setLeadManager(String leadManager) {
        this.leadManager = leadManager;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }
}
