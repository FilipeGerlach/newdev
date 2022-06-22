document.getElementById('button').addEventListener('click', () => {
  const valor = document.querySelector('input').value
  const input = document.createElement('input')

  function addLista() {
    ;`${input}, ${valor}`
    document.getElementById('list-section').appendChild(input)
    document.getElementById('list-section').appendChild(valor)
  }

  addLista()
})
