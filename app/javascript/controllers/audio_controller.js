import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="audio"
export default class extends Controller {
  connect() {
    console.log("audio")
    const audio = new Audio('Smells Like Teen Spirit.mp3');
      audio.play();
  }
}
