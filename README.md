# ImplementingCollectionViews
Implementing Collection Views to show a Book Cover

# Collection Views

- A collection of views
- Collection views are created the same way as tables.

# Collection View Cell

- They are empty cells that we have to customize as we did before for custom table view cells.
- UICollectionViewCell class creates the cell, and contain three empty views to manage their content:
- a view for the content
- a view for the background
- second background view that is shown when the cell is selected.

### contentView
### backgroundView
### selectedbackgroundView

# Collection View Flow Layout

- The big difference between TableViews and Collection Views is that the position of the cells in a Collection View are not determinated by the view, they are set by a layout object that works along with the Collection View to present the cells on the screen. This object is created from a subclass of the UICollectionViewLayout class. 

- Collection Views include by default a subclass called UICollectionViewFlowLayout that provides a very customizable grid-like layout that is usually more than enough for our projects. The layout is called Flow


