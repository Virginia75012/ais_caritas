const initSimulateur = () => {
  let minRent;
  let maxRent;

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

    const minHtml = document.getElementById('min');
    const maxHtml = document.getElementById('max');
    document.getElementById("demo").innerHTML = state.dataset.m2 + "m²";

    if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '30') {
      minRent = 17 * state.dataset.m2;
      maxRent = 19 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '70') {
      minRent = 13 * state.dataset.m2;
      maxRent = 15 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '85') {
      minRent = 10 * state.dataset.m2;
      maxRent = 12 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '30') {
      minRent = 18 * state.dataset.m2;
      maxRent = 20 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '70'){
      minRent = 17 * state.dataset.m2;
      maxRent = 19 * state.dataset.m2;

    } else if (state.dataset.zone === 'ZONE Abis' && state.dataset.percentage === '85'){
      minRent = 15 * state.dataset.m2;
      maxRent = 17 * state.dataset.m2;
    }

    counter(minHtml, minRent)
    counter(maxHtml, maxRent)
  }

  const counter = (elementHtml, value) => {
    const n = parseInt(value)
    let cpt = -1; // Initialisation du compteur
    const duree = 4; // Durée en seconde pendant laquel le compteur ira de 0 à 15
    const delta = Math.ceil((duree * 1000) / n); // On calcule l'intervalle de temps entre chaque rafraîchissement du compteur (durée mise en milliseconde)

    function countdown() {
      elementHtml.innerHTML = ++cpt;
      if( cpt < n ) { // Si on est pas arrivé à la valeur finale, on relance notre compteur une nouvelle fois
         setTimeout(countdown, delta);
      }
    }

    setTimeout(countdown, delta);
  }

  const items = document.querySelectorAll('.simulation')

  items.forEach((item) => {
    item.addEventListener('click', simulation)
  })

  simulation();

}

export { initSimulateur };
