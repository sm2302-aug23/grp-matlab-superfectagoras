# Spline Your Name
 ![superfectagoras banner](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/SM.png)

## Task  1: Readying the letters
### 1.1: Observations on cursive fonts and handwriting
During brainstorming, we thought of using the Pacifico Font. But after several more discussion, we decided to use most of Waqi's sister cursive font and few from Pacifico Font as reference to the fonts that we plot using spline. Below is how the cursive font looks like for both uppercase and lowercase letters of the two fonts;
![lowercase reference](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/lowercase%20reference.jpeg)
![uppercase reference](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/uppercase%20reference.jpeg)
![PacificoFont](https://github.com/sm2302-aug23/grp-matlab-superfectagoras/blob/main/PacificoFont.jpg)

Here's how some of the plots we made looks like;
(add photos of the letters we made)

### 1.2: Observation on splines
- Start and end of curves
- Sharp turns
- Back-and-forths

### 1.3: Applying the observations
- Consistent starting and ending points

We standardized the dimensions of lowercase letters to 2by2 and uppercase letters to 4by4. This was done to facilitate clear distinction between letter sizes.

We determine the x and y coordinates for each point by envisioning the anticipated appearance of the plot. Some of us even utilized graph paper to visually identify the points for plotting each letter more conveniently.

To enhance the sharp corners, an additional point was incorporated to create a loop effect, given for the inherent curve nature of spline.

For lowercase letters, mostly begin at x=0 and end at x=2, while uppercase letters end at x=4. This ensures proper alignment of letters on a line when constructing words and consistent starting and ending points for most letters.

## Task 2: Creating letter_database.m
- Purpose: To store the coordinates of each letters
- Methodology: Dictionary
- Error Handling
- The file is [letters_database.m](letters_database.m) for reference

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

- **Task 1:** All :computer: :sparkles: :octocat: :wilted_flower:
  :books: :pill: :partly_sunny: :milky_way:

- **Task 2:** All :computer: :sparkles: :octocat: :wilted_flower:
  :books: :pill: :partly_sunny: :milky_way:
  
- **Task 3:** Waqi :computer: :sparkles:

- **Task 4:** Waqi :computer: :sparkles:

- **Bonus Tasks:**

- **README:** Waqi & Ros & Fizah :computer: :sparkles: :octocat: :wilted_flower: :partly_sunny: :milky_way:
