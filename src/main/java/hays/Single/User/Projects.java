package hays.Single.User;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class Projects {

    @Id
    @GeneratedValue( strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column
    private String projectName;

    @Column
    private String pmsm;

    @Column
    private String techLeads;

    @Column
    private String testingLeads;

    @Column
    private String milestonesAchieved;

    @Column
    private Date startDate;

    @Column
    private Date completionDate;

    public Projects() {
    }

    public Projects(String projectName, String pmsm, String techLeads, String testingLeads,
                    String milestonesAchieved, Date startDate, Date completionDate) {
        this.projectName = projectName;
        this.pmsm = pmsm;
        this.techLeads = techLeads;
        this.testingLeads = testingLeads;
        this.milestonesAchieved = milestonesAchieved;
        this.startDate = startDate;
        this.completionDate = completionDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getPmsm() {
        return pmsm;
    }

    public void setPmsm(String pmsm) {
        this.pmsm = pmsm;
    }

    public String getTechLeads() {
        return techLeads;
    }

    public void setTechLeads(String techLeads) {
        this.techLeads = techLeads;
    }

    public String getTestingLeads() {
        return testingLeads;
    }

    public void setTestingLeads(String testingLeads) {
        this.testingLeads = testingLeads;
    }

    public String getMilestonesAchieved() {
        return milestonesAchieved;
    }

    public void setMilestonesAchieved(String milestonesAchieved) {
        this.milestonesAchieved = milestonesAchieved;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getCompletionDate() {
        return completionDate;
    }

    public void setCompletionDate(Date completionDate) {
        this.completionDate = completionDate;
    }
}
