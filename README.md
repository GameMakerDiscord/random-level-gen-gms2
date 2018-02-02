# Random Level Generation
A random level generation example (similar to Nuclear Throne) using GameMaker Studio 2.

This example project uses a DS Grid to generate a random level. This level generation process looks somewhat like this:
- Create a grid
- Fill the grid with VOID cells (some number that represents an area that can't be walked on)
- Create a controller at the center of the grid
- Move the controller in a direction (0, 90, 180, 270) and create a FLOOR cell (some number that represents an area that CAN be walked on) in each location
- If the controller hits a wall reverse the direction
- Every step the controller has a random chance of choosing a new direction
- Run the controller for a fixed amount of steps (400 or so)
- Once the level has been generated, loop through and remove any isolated VOID cells (This just makes the level look cleaner and a bit less "random")

After generating the level, we fill the game room with tiles using the bitmasking method taught in this article: https://gamedevelopment.tutsplus.com/tutorials/how-to-use-tile-bitmasking-to-auto-tile-your-level-layouts--cms-25673

Finally, we use binary math to detect for collisions in the level's DS Grid.

![random level gen gif](https://user-images.githubusercontent.com/35774957/35686554-c1e73e1c-0729-11e8-84e7-f71b29f87354.gif)
