
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 09_ALTERNATIVE_QUOTE_OP

---

And our next area in review in our Explorer path is looking at the alternate quote operator. And this really kind of could have been included within our literal character section, but, sometimes, if you combine them too fast here, they don't sink in. So we're going to look at those situations when you actually want to use a single quote, and we already know here to include then a literal character string. The single code is the delineator here from that character string into this SELECT statement.

So objectives on this one is to describe an alternate quote operator here to be utilized when the situations where you need a single quote here, in essence, an apostrophe or possibly something else, and you don't want it to be interpreted as a literal character string, or you want it to be part of a literal character string.

So, looking at it here, the alternative quote operator in Oracle allows me to or allows us to specify my own quotation mark delimiter. So, instead of the single quote or the single tick, if you prefer, we could use something else. We can select any delimiter here that we would possibly consider using.

There are some restrictions in that you can't use some special characters. And I guess, as you're working with it here, the ones that you can't, of course, it's going to throw an error. Unfortunately, here I can't think of one right off the bat here that would be invalid, but you could use I'll call it here the hard bracket.

You could use the squiggly brace I think is what they refer to them. You could as an open paren and a close paren. You could use the greater than or less than symbol as a delimiter. You really do have some good flexibility or, in essence, you're pretty much anything that you want to utilize.

In looking at this one here, you'll see that we needed to, of course-- for our literal string that we wanted to work with, we wanted to include the single quote or the apostrophe to represent Department's Manager ID. And, of course, that means a possessive, right? So you'll note here we're going to kind of escape out of the single quote.

And then what immediately follows after it here is going to be then turn on my delimiter. In this illustration, they're using the bracket. And, of course, when you end it, the bracket, you can return back here to the single quote, and it continues on here as it would be normal.

Certainly, we'll have a demonstration on this one. And, actually, I'm going to redo this one for you as the demo. And you'll see, again, this q here is escaping or saying that I no longer want to recognize the single quote as my delimiter here for my literal. I'm going to be using the bracket because I want to be able to have my apostrophe s within my literal string.

---
