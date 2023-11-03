

#### units

```jv
import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {

        int person;
        double unit = 0.4, total;

        Scanner sc = new Scanner(System.in);
        System.out.print("how many people are in the room? ");
        person = sc.nextInt();
        total = unit*person;


        System.out.print("you will need...");
        System.out.println(person+" * "+unit+" kg = "+total+" kg");
    }
}

>>>
how many people are in the room? 30
you will need...30 * 0.4 kg = 12.0 kg
>>>
```

---
