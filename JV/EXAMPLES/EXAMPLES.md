
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### JAVA_EXPLORER

---

* [inp_name_str](#inp_name_str)
* [inp_units_int](#inp_units_int)
* []()
* []()
* []()

---

#### inp_name_str

```jv
import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {

        String person;

        Scanner sc = new Scanner(System.in);
        System.out.print("what's your name? ");
        person = sc.nextLine();

        System.out.print("your name is...");
        System.out.println(person);
    }
}

>>>
what's your name? trk
your name is...trk
>>>
```

---


#### inp_units_int

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
