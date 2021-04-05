/*
 * CS 2050 - Computer Science II - Summer 2020
 * Instructor: Thyago Mota
 * Description: Prg 04 - QuizApp class
 * Author: Jose Garcia-Martinez
 */

import com.sun.jdi.event.ExceptionEvent;

import javax.naming.LimitExceededException;
import java.io.*;
import java.util.*;

public class QuizApp {

    private static final String STUDENTS_FILE_NAME = "students.csv";
    private static final String QUIZ_FILE_NAME     = "quiz.txt";
    private static final double TOLLERANCE         = 0.0001;
    public static Scanner sc = new Scanner(System.in);

    // instance variables
    private Hashtable<String, Student> students;
    private LinkedList<Question> quiz;
    private String title;

    public QuizApp() throws FileNotFoundException {
        loadStudents();
        loadQuiz();
    }

    // TODOw: finish the implementation of the method
    public void loadStudents() throws FileNotFoundException {
        students = new Hashtable<>();
        try {
            Scanner in = new Scanner(new FileInputStream(STUDENTS_FILE_NAME));
            String line;
            while (in.hasNextLine()) {
                line = in.nextLine();
                String[] data = line.split(",");
                Student obj = new Student(data[0]);

                for (int i = 1; i < data.length - 1; i++) {
                    try {
                        //System.out.println(Double.parseDouble(data[i]));
                        obj.addResult(Double.parseDouble(data[i]));
                        // System.out.println(obj);

                    } catch (NumberFormatException e) {
                    }
                }

                students.put(data[0], obj);
                //  System.out.println("Student: " + obj);

            }
            in.close();
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }

    }

    // TODOw: finish the implementation of the method
    public void saveStudents() throws FileNotFoundException {
        try {
            PrintStream out = new PrintStream(new FileOutputStream(STUDENTS_FILE_NAME));
            Iterator<Student> it = students.iterator();
            while (it.hasNext()) {
                Student student = it.next();
                String studentInfo = student.toString();
                out.println(studentInfo);
            }
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }

    }

    // TODOw: finish the implementation of the method
    public void loadQuiz() throws FileNotFoundException {
        quiz = new LinkedList<>();
        try {
            Scanner in = new Scanner(new FileInputStream(QUIZ_FILE_NAME));
            String line;
            title = in.nextLine();
            List<String> data = new ArrayList<>();
            while (in.hasNextLine()) {
                line = in.nextLine();
                data.add(line);
            }

           //System.out.println(data);
            int optionCounter = 0;
            int numberOptions;
            int correntOption;
            String numbers;
            for (int i = 1; i < data.size(); i++) {
                i--;
                optionCounter = 0;
                if (data.get(i).contains("?")) {
                    Question obj = new Question(data.get(i));
                    i++;
                  //System.out.println(obj);
                    numbers = data.get(i).replaceAll("\\D+", "");
                    i++;
                    ///System.out.println(obj);
                    numberOptions = Character.getNumericValue(numbers.charAt(0));
                    correntOption = Character.getNumericValue(numbers.charAt(1));
                    obj.setCorrect(correntOption -1);
                    //System.out.println(obj);
                    while (optionCounter < numberOptions && i < data.size() && !data.get(i).contains("?")) {
                        obj.addOption(data.get(i));
                        i++;
                        optionCounter++;
                    }
                    quiz.append(obj);
                }

            }

            in.close();
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }

    }

    public void runQuiz() {
        System.out.println("This quiz is about: " + title);
        System.out.print("What's your name? ");
        String name = sc.nextLine();
        Student student = students.get(name);
        if (student == null) {
            student = new Student(name);
            students.put(name, student);
        }
        int correct = 0;
        if (student.canTakeQuiz()) {
            Iterator<Question> it = quiz.iterator();
            while (it.hasNext()) {
                Question question = it.next();
                System.out.println(question);
                System.out.print("Answer: ");
                int answer = sc.nextLine().toLowerCase().charAt(0) - 'a';
                if (answer == question.getCorrect()) {
                    correct++;
                    System.out.println("Correct!");
                }
                else
                    System.out.println("Incorrect!");
                System.out.println();
            }
            double grade = (double) correct / quiz.size() * 100;
            System.out.println("Your grade this time was: " + String.format("%.2f", grade));
            student.addResult(grade);
        }
        else
            System.out.println("Sorry but you cannot take this quiz anymore!");
    }

    public static void main(String[] args) throws FileNotFoundException {
        QuizApp quizApp = new QuizApp();
        quizApp.runQuiz();
        quizApp.saveStudents();


    }
}
