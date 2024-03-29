// import { Controller } from "@hotwired/stimulus"
// import { createConsumer } from "@rails/actioncable"

// export default class extends Controller {
//   // static values = { chatroomId: Number }
//   static targets = ["messages"]
//   static values = {
//     chatroomId: Number
//   }

//   connect() {
//     console.log(this.chatroomIdValue)
//     createConsumer().subscriptions.create(
//       { channel: "ChatroomChannel", id: this.chatroomIdValue},
//       { received: (data) => { this.messages.Target.insertAjacentHTML("beforeend", data) } }
//     )
//     // console.log(this.messagesTarget)
//   }
// }

import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
