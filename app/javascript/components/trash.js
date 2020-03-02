import { initSweetalert } from '../plugins/init_sweetalert';

const trash = () => {
  const trashButtons = document.querySelectorAll('[id^="sweet-alert-trash"]');
  if('[id^="sweet-alert-trash"]') {
    trashButtons.forEach((trashButton) => {
      initSweetalert(`#${trashButton.id}`, {
      title: "Voulez-vous supprimer cet appartement ?",
      text: "Cette action sera irréversible",
      buttons: ["Fermer", "Supprimer"],
      dangerMode: true,
      icon: "warning"
    }, (value) => {
      if (value) {
        const link = document.querySelector('#delete-link');
        link.click();
      }
    });
    });

  }
}

export { trash }

