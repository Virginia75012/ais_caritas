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
    document.querySelector('#state').dataset.zone = event.currentTarget.innerText
  }

  const setPerc = (event) => {
    document.querySelector('#state').dataset.percentage = event.currentTarget.innerText.split('%')[0]
  }

  const simulation = () => {
    const state = document.querySelector('#state')

    document.querySelector('#myRange').oninput = function() {
      state.dataset.m2 = this.value;
    }

    document.querySelectorAll('.zone').forEach((zone) => {
      zone.addEventListener('click', setZone)
    })

    document.querySelectorAll('.percentage').forEach((perc) => {
      perc.addEventListener('click', setPerc)
    })


    console.log(state.dataset.zone)
    console.log(state.dataset.m2)
    console.log(state.dataset.percentage)

    if (state.dataset.zone === 'ZONE A' && state.dataset.percentage === '30') {

    } else if (zone.innerText === 'ZONE A' && percentage.innerText === '70') {

    } else if (zone.innerText === 'ZONE A' && percentage.innerText === '85') {

    }
  }

  const items = document.querySelectorAll('.simulation')

  items.forEach((item) => {
    item.addEventListener('click', simulation)
  })

}

export { initSimulateur };
