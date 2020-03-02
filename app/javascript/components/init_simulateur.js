const initSimulateur = () => {

  const removeActive = () => {
    document.querySelectorAll('.zone').forEach((btn) => {
      btn.classList.remove('btn-active')
    })
  }

  const toggleActive = (event) => {
    removeActive();
    event.currentTarget.classList.add('btn-active')
  }

  document.querySelectorAll('.zone').forEach((btn) => {
    btn.addEventListener('click', toggleActive)
  })

  const supressionActive = () => {
    document.querySelectorAll('.percentage').forEach((btn) => {
      btn.classList.remove('btn-active')
    })
  }

  const changeActive = (event) => {
    supressionActive();
    event.currentTarget.classList.add('btn-active')
  }

  document.querySelectorAll('.percentage').forEach((btn) => {
    btn.addEventListener('click', changeActive)
  })

  const setZone = (event) => {
    console.log(event.currentTarget.innerText)
    document.querySelector('#state').dataset.zone = event.currentTarget.innerText
  }

  const setPerc = (event) => {
    document.querySelector('#state').dataset.percentage = event.currentTarget.innerText.split('%')[0]
  }

  const simulation = () => {
    const state = document.querySelector('#state');

    document.querySelector('#myRange').oninput = function() {
      state.dataset.m2 = this.value;
    }

    document.querySelectorAll('.zone').forEach((zone) => {
      zone.addEventListener('click', setZone)
    })

    document.querySelectorAll('.percentage').forEach((perc) => {
      perc.addEventListener('click', setPerc)
    })

    const minRent = document.getElementById('min');
    const maxRent = document.getElementById('max');
    document.getElementById("demo").innerHTML = state.dataset.m2 + "m²";

    if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '30') {
      minRent.innerHTML = 17 * state.dataset.m2;
      maxRent.innerHTML = 19 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '70') {
      minRent.innerHTML = 13 * state.dataset.m2;
      maxRent.innerHTML = 15 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '85') {
      minRent.innerHTML = 10 * state.dataset.m2;
      maxRent.innerHTML = 12 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '30') {
      minRent.innerHTML = 18 * state.dataset.m2;
      maxRent.innerHTML = 20 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '70'){
      minRent.innerHTML = 17 * state.dataset.m2;
      maxRent.innerHTML = 19 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '85'){
      minRent.innerHTML = 15 * state.dataset.m2;
      maxRent.innerHTML = 17 * state.dataset.m2;
    }
  }

  const items = document.querySelectorAll('.simulation')

  items.forEach((item) => {
    item.addEventListener('click', simulation)
  })

  simulation();

}

export { initSimulateur };
