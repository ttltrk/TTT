
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 35_SORTING_SIMPLE_LISTS

---

* [3511_BUBBLE_SORT_1](#3511_BUBBLE_SORT_1)
* [3512_BUBBLE_SORT_2](#3512_BUBBLE_SORT_2)
* [3513_BUBBLE_SORT_3](#3513_BUBBLE_SORT_3)
* [3514_SECTION_SUMMARY](#3514_SECTION_SUMMARY)

---

#### 3511_BUBBLE_SORT_1

Now that you can effectively juggle the elements of lists, it's time to learn how to sort them. Many sorting algorithms have been invented so far, which differ a lot in speed, as well as in complexity. We are going to show you a very simple algorithm, easy to understand, but unfortunately not too efficient, either. It's used very rarely, and certainly not for large and extensive lists.

Let's say that a list can be sorted in two ways:

```
- increasing (or more precisely - non-decreasing) - if in every pair of adjacent elements,
the former element is not greater than the latter;

- decreasing (or more precisely - non-increasing) - if in every pair of adjacent elements,
the former element is not less than the latter.
```

In the following sections, we'll sort the list in increasing order, so that the numbers will be ordered from the smallest to the largest.

Here's the list:

```
8 | 10 | 6 | 2 | 4
```

We'll try to use the following approach: we'll take the first and the second elements and compare them; if we determine that they're in the wrong order (i.e., the first is greater than the second), we'll swap them round; if their order is valid, we'll do nothing. A glance at our list confirms the latter - the elements 01 and 02 are in the proper order, as in 8 < 10.

Now look at the second and the third elements. They're in the wrong positions. We have to swap them:

```
8 | 6 | 10 | 2 | 4
```

We go further, and look at the third and the fourth elements. Again, this is not what it's supposed to be like. We have to swap them:

```
8 | 6 | 2 | 10 | 4
```

Now we check the fourth and the fifth elements. Yes, they too are in the wrong positions. Another swap occurs:

```
8 | 6 | 2 | 4 | 10
```

The first pass through the list is already finished. We're still far from finishing our job, but something curious has happened in the meantime. The largest element, 10, has already gone to the end of the list. Note that this is the desired place for it. All the remaining elements form a picturesque mess, but this one is already in place.


[^^^](#35_SORTING_SIMPLE_LISTS)

---

#### 3512_BUBBLE_SORT_2

[^^^](#35_SORTING_SIMPLE_LISTS)

---

#### 3513_BUBBLE_SORT_3

[^^^](#35_SORTING_SIMPLE_LISTS)

---

#### 3514_SECTION_SUMMARY

[^^^](#35_SORTING_SIMPLE_LISTS)

---
