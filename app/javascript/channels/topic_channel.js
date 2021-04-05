import consumer from "./consumer";

const initTopicCable = () => {
  const messagesContainer = document.getElementById('messages');
  const messageBox = document.getElementById('message_content')
  if (messagesContainer) {
    const id = messagesContainer.dataset.topicId;
    const msgForm = document.getElementById('new_message');
    console.log(msgForm)

    consumer.subscriptions.create({ channel: "TopicChannel", id: id }, {
      received(data) {
        messagesContainer.innerHTML = ('beforeend', data)
        // messageBox.value = "" // <== pose problème
      },
    });
  }
}


export { initTopicCable };
