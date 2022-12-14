# Base Rails

## Standard Workflow

 1. Start the web server by running `bin/server`.
 1. Navigate to your live application.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**

Functionality
 >> 6. Create a way to bookmark task: boolean? checkbox, available default: false
      sort by deadline (asc? desc?), bookmarked ones go first
 >> 7. Push tasks to top of list if bookmarked, else sort by deadline date 
 8. Debate if better to keep destroy, or set state to done and auto delete every friday
 >> 9. Make Drop Down Menu for Category when creating Task only show User's Categories

DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
>> 1. Figure out how to save usernames into database. Figure out how to populate username as ownership of lists once signed in
 2. Add delete option to the side of edit, once you enter focus on a category
>> 3. Format deadline date -> <% number_of_days = Date.today - Date.parse(a_package.arrival.to_s) %>
    <% num_days = number_of_days.to_i %>
    <div 
      <%# if num_days > 3 %     ||   style= "color: red"|| % end %>>
    https://www.geeksforgeeks.org/ruby-datetime-now-function/
 4. Delete "show" and "back" options at bottom of the screen
>> 5. Find a way to redirect to Category page after category created (may be under aesthetic, since i want pop up windows that fade background for inputs)

 
✨ Aesthetic ✨

 1. Home page: delete User column from view. 
 2. Separate each list into it's own div.
 3. Turn Edit and Delete into icon buttons.
 4. Once clicked, pop up little window to creat, change, confirm or deny
 5. Turn "New category" into own little plus icon at right edge of other lists
 6. On each category, randomly generated color.
 7. Turn bookmarking task into an exclamation point checkbox and highlight underneath category title
 8. Next tasks (3 total displayed), fade out the other's text a little
 9. Clicking on the Category title redirects us to the show page for that category.
 10. Hovering over task unfades it
 11. Hovering over Deadline Date reveals actual datetime
