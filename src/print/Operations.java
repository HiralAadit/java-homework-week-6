package print;
//Q 9. Write a Java program to print the result of the following operations.
//Test Data: a. -5 + 8 * 6
// b. (55+9) % 9
// c. 20 + -3*5 / 8
// d. 5 + 15 / 3 * 2 - 8 % 3
//Expected Output : 43
// 1
// 19
// 13//

public class Operations {
    public static void main(String [] args){
        System.out.print("a=");
        System.out.println(-5+8*6);
        System.out.print("b=");
        System.out.println((55+9)%9);
        System.out.print("c=");
        System.out.println(20+-3*5/8);
        System.out.print("d=");
        System.out.println(5+15/3*2-8%3);
    }
}
