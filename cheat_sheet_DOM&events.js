// select element(s) when you don’t have an id at hand:
<p class="red">A red paragraph</p>
<p class="green">A green paragraph</p>
<p class="red">Another red paragraph</p>

const redParagraph = document.querySelector(".red"); // One element
const redParagraphs = document.querySelectorAll(".red"); // Multiple elements

// select an element in the DOM with its id
<ul id="players"></ul>
const list = document.getElementById("players");
console.log(list.nodeName);
// => "UL"

// function ES5-style that return a * b
function multiply(a, b) {
  return a * b;
}

// Define a JS Arrow function square taking one parameter x
const square = (x) => {
  return x * x;
};

const square = x => x * x;


// .nodeName
<ul id="players"></ul>
const list = document.getElementById("players");
console.log(list.nodeName);
// => "UL"


How do you listen and react to a DOM event?
 - use addEventListener on a DOM element:
   const element = document.getElementById('an-id');
   element.addEventListener('eventType', (event) => {
   // Do something with the event(callback)
   });

Which events allow you to check when a user presses a key?
 - 'keyup' and 'keydown'. Note that 'keydown' continues to be triggered
   when a user holds a key down.

classList: how do you add/remove/toggle a CSS class on a DOM element?
 - Suppose you selected an element with one of the getElementById() or querySelector() method.
   You can use classList to manipulate CSS classes on that element:
    element.classList.add("red");
    element.classList.remove("red");
    element.classList.toggle("red");

What happens when you click on a link? How do you prevent this from happening?
 - By default, clicking a link would
   navigate if the href is a URL
   go to top if the href is #
 - Using preventDefault() will block this default behavior.
    <a href="/delete/2" class="confirmable">Delete</a>
    const bindConfirm = (element) => {
      element.addEventListener("click", (event) => {
        if (!confirm("Are you sure you want to delete?")) {
          event.preventDefault();
        }
      });
    };
    document.querySelectorAll(".confirmable").forEach(bindConfirm);
