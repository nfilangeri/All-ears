import consumer from "./consumer";

const initTopicCable = () => {
  const messagesContainer = document.getElementById('messages');
  const messageBox = document.getElementById('message_content')
  if (messagesContainer) {
    const id = messagesContainer.dataset.topicId;
    consumer.subscriptions.create({ channel: "TopicChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        messageBox.value = ""
      },
    });
  }
}

export { initTopicCable };