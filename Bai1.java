import java.util.Scanner;

public class Bai1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Nhập số nguyên từ bàn phím
        System.out.print("Nhập vào một số nguyên: ");
        int n = scanner.nextInt();

        // Kiểm tra dương/âm
        if (n >= 0) {
            System.out.println("Đây là số nguyên dương");
        } else {
            System.out.println("Đây là số nguyên âm");
        }

        scanner.close();
    }
}
