const storage = localStorage
let names = []

const addStorage = event => {
  event.preventDefault()
  console.log('add')

  const namesKey = storage.getItem('names')
  names = namesKey ? JSON.parse(namesKey) : []

  names.push({
    name: document.getElementById('name').value,
    lastName: document.getElementById('lastName').value,
    location: document.getElementById('location').value,
    cellphone: document.getElementById('cellphone').value,
    email: document.getElementById('email').value
  })

  storage.setItem('names', JSON.stringify(names))

  if (names.length) {
    names.forEach(item => {
      const tr = document.createElement('tr')
      const tdName = document.createElement('td')
      tdName.innerHTML = item.name
      const tdLastName = document.createElement('td')
      tdLastName.innerHTML = item.lastName
      const tdLocation = document.createElement('td')
      tdLocation.innerHTML = item.location
      const tdCellphone = document.createElement('td')
      tdCellphone.innerHTML = item.cellphone
      const tdEmail = document.createElement('td')
      tdEmail.innerHTML = item.email
      tr.appendChild(tdName)
      tr.appendChild(tdLastName)
      tr.appendChild(tdLocation)
      tr.appendChild(tdCellphone)
      tr.appendChild(tdEmail)

      document.getElementById('tbodyText').appendChild(tr)
    })
  }
}

document.getElementById('sendButton').addEventListener('click', addStorage)
