/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author simonpeter
 */
public class agentBean implements Serializable {
    private int agentID;
    private String agentName;
    private String region;

    public agentBean() {
    }
    
    public agentBean(int agentID, String agentName, String region) {
        this.agentID = agentID;
        this.agentName = agentName;
        this.region = region;
    }

    public int getAgentID() {
        return agentID;
    }

    public void setAgentID(int agentID) {
        this.agentID = agentID;
    }

    public String getAgentName() {
        return agentName;
    }

    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @Override
    public String toString() {
        return "agentBean{" + "agentID=" + agentID + ", agentName=" + agentName + ", region=" + region + '}';
    }
}
