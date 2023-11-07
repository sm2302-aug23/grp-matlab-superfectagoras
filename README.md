# Spline Your Name
 ![superfectagoras banner](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/SM.png)

## Task  1: Readying the letters
### 1.1: Observations on cursive fonts and handwriting
During brainstorming, we thought of using the Pacifico Font. But after
several more discussion, we decided to use most of Waqi's sister cursive
font and few from Pacifico Font as reference to the fonts that we plot
using spline. Below is how the cursive font looks like for both uppercase
and lowercase letters of the two fonts;
![lowercase reference](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/lowercase%20reference.jpeg)
![uppercase reference](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/uppercase%20reference.jpeg)
![PacificoFont](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/PacificoFont.jpg)

Here's how some of the plots we made looks like;
(add photos of the letters we made)

### 1.2: Observation on splines
The start point of each curve plot of letters looks a bit sharp while the
end points are more curvy that it would go beyond the point.

To make the letter point sharper and less curved for sharp turns, we add
additional points. Depending on each additional point we plot, it will
creates a loop effect. The more closely two points are spaced(1 for the
initial point and 1 for the additional point), the sharper the curves seem.

For back-and-forths, imagine drawing on-going lines between points and when
we connect them, the spline shifts back and forth between these points.
It's like a zigzag motion as the spline links them together.

### 1.3: Applying the observations
We standardized the dimensions of lowercase letters to 2by2 and uppercase
letters to 4by4. This was done to facilitate clear distinction between
letter sizes.

We determine the x and y coordinates for each point by envisioning the
anticipated appearance of the plot. Some of us even utilized graph paper to
visually identify the points for plotting each letter more conveniently.

To enhance the sharp corners, an repeated point was incorporated to
create a loop effect, given for the inherent curve nature of spline.

For lowercase letters, mostly begin at x=0 and end at x=2, while uppercase
letters end at x=4. This ensures proper alignment of letters on a line when
constructing words and consistent starting and ending points for most
letters.

## Task 2: Creating letters_database.m
To store the coordinates of the letters, we have decided to use a dictionary! This dictionary is put inside the letters_database.m function.
The input is the letter that we want to find the coordinates for.
The output will be both the x and y coordinates of the letter.
- The file is [letters_database.m](letters_database.m) for reference

To use a dictionary, we need to have a key and a value array. How it works is that a key is paired with a value, and the pairing is depending on 
their index on their respective arrays.

Our keys are the letters that we will be accepting, being both uppercase and lowercase alphabets. We had to store them inside a cell because
if we use an array instead, the letters will be joined together, which will not be ideal for use as keys for dictionaries.

Our values will be the x and y coordinates for the letter. To store both of them inside an index, we have to put the pair inside another cell. 
The first array in the inner cell will be the x coordinates, the second array in the inner cell will be the y coordinates.

## Task 3: Making words/sentences
- Translating the coordinates to the right
- Breaking lines by shifting coordinates to the top/bottom
- Adjusting the axes to clearly show the plot
- The code can be viewed in [translator.m](translator.m) for reference

## Task 4: Creating plotWord.m
- Breaking strings into chunks of words
- Breaking chunks of words into characters
- The file is [plotWord.m](plotWord.m) for reference

## Bonus Tasks: Aesthetic Bonuses
- Changing the line colour and thickness
- The file is [ThickColour.m](ThickColour.m) for reference
- Advanced Line Breaking System
- Animating the plot

## Contributors

- Waqi :computer: :sparkles:
- Ros :octocat: :wilted_flower:
- Fizah :partly_sunny: :milky_way:
- Wana :books: :pill:
