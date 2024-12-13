/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package enrolement;

/**
 *
 * @author ismae
 */
public class Citoyen {
    private String nom;
    private String prenom;
    private String dateNaissance;
    private String antenne;
    // constructeur

    public Citoyen(String nom, String prenom, String dateNaissance, String antenne) {
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.antenne = antenne;
    }
    
    //methode pour remplire le formualire
    public void remplirInfo(String nom, String prenom, String dateNaissance, String antenne){
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.antenne = antenne;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getAntenne() {
        return antenne;
    }

    public void setAntenne(String antenne) {
        this.antenne = antenne;
    }
    public static void main(String[] args){
        System.out.println("hello!");
    }
    
}
