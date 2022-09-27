$( document ).ready(function() {

// Create an instance of mark.js and pass an argument containing
// the DOM object of the context (where to search for matches)
var markInstance = new Mark(document.querySelector(".context"));
// Cache DOM elements
var keywordInput = document.querySelector("input[name='keyword']");
var optionInputs = document.querySelectorAll("input[name='opt[]']");

function performMark() {

  // Read the keyword
  var keyword = keywordInput.value;

  // Determine selected options
  var options = {};
  [].forEach.call(optionInputs, function(opt) {
    options[opt.value] = opt.checked;
  });

  // Remove previous marked elements and mark
  // the new keyword inside the context
  markInstance.unmark({
  	done: function(){
    	markInstance.mark(keyword, options);
    }
  });
};

// Listen to input and option changes
keywordInput.addEventListener("input", performMark);
for (var i = 0; i < optionInputs.length; i++) {
  optionInputs[i].addEventListener("change", performMark);
}

 
});
