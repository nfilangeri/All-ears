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
        messagesContainer.innerHTML = data
        messageBox.value = ""
      },
    });
  }
}

const rating = () => {
  const submitButton = document.getElementById("submit-rating");
    submitButton.addEventListener('click', (event) => {
      const newRating = document.querySelector(".new-rating");
      newRating.style.display = "none";
      const ratingThankYou = document.querySelector(".rating-thank-you");
      ratingThankYou.style.display = "block";
});
}

export { initTopicCable, rating };