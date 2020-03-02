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

  const supression = () => {
    document.querySelectorAll('.percentage').forEach((btn) => {
      btn.classList.remove('btn-active')
    })
  }

  const change = (event) => {
    supression();
    event.currentTarget.classList.add('btn-active')
  }

  document.querySelectorAll('.percentage').forEach((btn) => {
    btn.addEventListener('click', change)
  })
}
 export { initSimulateur };
