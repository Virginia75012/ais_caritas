const slide = () => {
  const zoneA = document.getElementById('zoneA');
  console.log(zoneA);
  const slider = document.getElementById("myRange");
  const output = document.getElementById("demo");
  if (slider) {
    output.innerHTML = slider.value; // Display the default slider value
    // Update the current slider value (each time you drag the slider handle)
    slider.oninput = function() {
      output.innerHTML = this.value;
    }
  }
}

export { slide }
