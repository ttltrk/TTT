
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### PRIMITIVE_TYPES

---

```

```

---

* [INT_MIN_MAX](#INT_MIN_MAX)
* [BUSTED_INT](#BUSTED_INT)
* [BYTE_MIN_MAX](#BYTE_MIN_MAX)
* [SHORT_MIN_MAX](#SHORT_MIN_MAX)
* [LONG_MIN_MAX](#LONG_MIN_MAX)

---

#### INT_MIN_MAX

```JAVA
package com.company;

public class Main {

    public static void main(String[] args) {

        int myValue = 10000;

        int myMinValue = Integer.MIN_VALUE;
        int myMaxValue = Integer.MAX_VALUE;

        System.out.println("Integer Minimum Value " + myMinValue);
        System.out.println("Integer Maximum Value " + myMaxValue);

    }
}

>>>
Integer Minimum Value -2147483648
Integer Maximum Value 2147483647
>>>
```

[^^^](#PRIMITIVE_TYPES)

---

#### BUSTED_INT

```JAVA
package com.company;

public class Main {

    public static void main(String[] args) {

        int myValue = 10000;

        int myMinValue = Integer.MIN_VALUE;
        int myMaxValue = Integer.MAX_VALUE;

        System.out.println("Integer Minimum Value " + myMinValue);
        System.out.println("Integer Maximum Value " + myMaxValue);

        System.out.println("BUSTED_MIN Value " + (myMinValue - 1));
        System.out.println("BUSTED_MAX Value " + (myMaxValue + 1));

    }
}

>>>
Integer Minimum Value -2147483648
Integer Maximum Value 2147483647
BUSTED_MIN Value 2147483647
BUSTED_MAX Value -2147483648
>>>
```

[^^^](#PRIMITIVE_TYPES)

---

#### BYTE_MIN_MAX

```JAVA
package com.company;

public class Main {

    public static void main(String[] args) {

        byte myMinByteValue = Byte.MIN_VALUE;
        byte myMaxByteValue = Byte.MAX_VALUE;

        System.out.println("Byte Minimum Value " + myMinByteValue);
        System.out.println("Byte Maximum Value " + myMaxByteValue);
    }
}

>>>
Byte Minimum Value -128
Byte Maximum Value 127
>>>
```

[^^^](#PRIMITIVE_TYPES)

---

#### SHORT_MIN_MAX

```JAVA
package com.company;

public class Main {

    public static void main(String[] args) {

        short myMinShortValue = Short.MIN_VALUE;
        short myMaxShortValue = Short.MAX_VALUE;

        System.out.println("Short Minimum Value " + myMinShortValue);
        System.out.println("Short Maximum Value " + myMaxShortValue);
    }
}

>>>
Short Minimum Value -32768
Short Maximum Value 32767
>>>
```

[^^^](#PRIMITIVE_TYPES)

---

#### LONG_MIN_MAX

```java
package com.company;

public class Main {

    public static void main(String[] args) {

        long myMinLongValue = Long.MIN_VALUE;
        long myMaxLongValue = Long.MAX_VALUE;

        System.out.println("Long Minimum Value " + myMinLongValue);
        System.out.println("Long Maximum Value " + myMaxLongValue);
    }
}

>>>
Long Minimum Value -9223372036854775808
Long Maximum Value 9223372036854775807
>>>
```

[^^^](#PRIMITIVE_TYPES)

---
