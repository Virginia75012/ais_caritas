const slide = () => {
  const zoneA = document.getElementById('zoneA');
  const zoneB = document.getElementById('zoneB');
  const slider = document.getElementById("myRange");
  const output = document.getElementById("demo");
  const percentage30 = document.getElementById('30');
  const percentage70 = document.getElementById('70');
  const percentage85 = document.getElementById('85');

  if (slider) {
    output.innerHTML = slider.value;
    slider.oninput = function() {
      output.innerHTML = this.value;
    }
  }
}

export { slide }
