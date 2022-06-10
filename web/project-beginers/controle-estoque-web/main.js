cars = [];

const loadCars = () => {
  const carrosJaArmazenados = localStorage.getItem('listCars');
  return carrosJaArmazenados ? JSON.parse(carrosJaArmazenados) : [];
}
const listCars = () => {
  const cars = loadCars();
  
  
  let ul = document.querySelector('ul');
  if (ul) {
    ul.remove();
  }
  
  ul = document.createElement('ul');
 
  cars.forEach((item) => {
    const li = document.createElement('li');
    li.innerHTML = 
    
    `marca: ${item.brand} 
      tipo: ${item.type}, 
      ano: ${item.age}
     `;

    
    ul.appendChild(li);
  });
  
  document.getElementById('list-section').appendChild(ul);
}


const addCar = (event) =>{
  event.preventDefault();
  
  const car = {
    brand: document.getElementById('brand').value,
    type: document.getElementById('type').value,
    age: document.getElementById('age').value,
  }

  cars.push(car)

  localStorage.setItem('listCars', JSON.stringify(cars));

  document.querySelector('form').reset();

  listCars()
}
const buttonAddCar = document.getElementById('buttonForm');
buttonAddCar.addEventListener('click', addCar)