let tasks = []
// function listRemove(li){
//   li.remove();
// }

function taskDay(event) {
  event.preventDefault()
  
  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fa-solid fa-trash-can')
  // iconRemove.setAttribute('onclick',`listRemove(${iconRemove.parentNode})`)
  
  const input = document.createElement('input')
  input.setAttribute('type', 'checkbox')
  
  const li = document.createElement('li')
  const ul = document.createElement('ul')
  const section = document.getElementById('list-section')
  const value = document.getElementById('task').value
  
  li.innerHTML = value
  li.appendChild(input)
  li.appendChild(iconRemove)
  ul.appendChild(li)
  section.appendChild(ul)
  tasks.push(li.innerHTML)
  localStorage.setItem('task', JSON.stringify(tasks))

}
document.getElementById('add-button').addEventListener('click', taskDay)
