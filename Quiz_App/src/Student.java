/*
 * CS 2050 - Computer Science II - Summer 2020
 * Instructor: Thyago Mota
 * Description: Prg 04 - Student class
 * Author:Jose Garcia-Martinez
 */

import com.sun.jdi.event.ExceptionEvent;

import javax.naming.LimitExceededException;

public class Student {

    private String name;
    private static int MAX_RETAKES = 3;
    private double results[];
    private int retakes;

    public Student(String name) {
        this.name = name;
        results = new double[MAX_RETAKES];
        int retakes = 0;
    }

    public String getName() {
        return name;
    }


    public int getRetakes() {
        return retakes;
    }

    // TODOd: finish the method implementation
    public boolean canTakeQuiz() {
        if(retakes <= 2)
            return true;
        return false;
    }

    // TODOw: finish the method implementation
    public void addResult(double result) {

            results[retakes] = result;
            retakes++;

    }

    // TODOw: finish the method implementation
    public double finalGrade()
    {
        double finalScore = 0;
        for(int i = 0; i < retakes ;i++){
            finalScore += results[i];
        }
        return finalScore / results.length;
    }

    @Override
    public String toString() {
        String str = name + ",";
        for (int i = 0; i < retakes; i++)
            str += String.format("%.2f", results[i]) + ",";
        for (int i = retakes; i < MAX_RETAKES; i++)
            str += ",";
        return str + String.format("%.2f", finalGrade());
    }
}
