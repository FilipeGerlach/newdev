cars = []

const loadCars = () => {
  const carrosJaArmazenados = localStorage.getItem('listCars')
  return carrosJaArmazenados ? JSON.parse(carrosJaArmazenados) : []
}
const onClickEdit = (element) => {
  const identificadorASerEncontrado = 
    element.getAttribute('identificador');

  identificadorQueTaSendoEditado = +identificadorASerEncontrado;
  
  const cars = loadCars();
  console.log('cars', cars);
  let carFound = {
    brand: '',
    type: '',
    age: ''
  };

  cars.forEach((car, identificador) => {
    if (identificador === +identificadorASerEncontrado) {
      carFound.brand = car.brand;
      carFound.type = car.type;
      carFound.age = car.age;
    }
  });

  document.getElementById('brand').value = carFound.brand;
  document.getElementById('type').value = carFound.type;
  document.getElementById('age').value = carFound.age;

  console.log('carFound', carFound);
}
const salvarRegistroEditado = (registroSendoEditado) => {
  const cars = loadPeoples();
  const carAtualizado = cars.map((car, index) => { 
    if (identificadorQueTaSendoEditado === index) {
      car.brand = registroSendoEditado.brand;
      car.type = registroSendoEditado.type;
      car.age = registroSendoEditado.age;
    }
    return car;
  })

  localStorage.setItem('listaDeCarros', JSON.stringify(carAtualizado));

  identificadorQueTaSendoEditado = null;

  listCars();
  document.querySelector('form').reset();
}
const span = (identificador) => {
  const span = document.createElement('span');
  const iconEdit = document.createElement('i');
  iconEdit.setAttribute('class', 'fas fa-edit');
  iconEdit.setAttribute('title', 'Editar');
  iconEdit.setAttribute('identificador', `${identificador}`);
  iconEdit.setAttribute('onclick', `onClickEdit(this)`);
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;');

  span.appendChild(iconEdit);
  
  return span;
} 

if (document.getElementById('list-section')) {
  const listCars = () => {
    const cars = loadCars()

    let ul = document.querySelector('ul')
    if (ul) {
      ul.remove()
    }

    ul = document.createElement('ul')

    cars.forEach((item, index) => {
      const li = document.createElement('li')
      li.innerHTML = `código: ${index} marca: ${item.brand} 
      tipo: ${item.type}, 
      ano: ${item.age}
     `
      li.appendChild(span())
      ul.appendChild(li)
    })
    console.log(document.getElementById('list-section'))
    document.getElementById('list-section').appendChild(ul)
  }
  listCars()
}

const addCar = event => {
  event.preventDefault()

  const car = {
    brand: document.getElementById('brand').value,
    type: document.getElementById('type').value,
    age: document.getElementById('age').value
  }
  cars = loadCars()
  cars.push(car)

  localStorage.setItem('listCars', JSON.stringify(cars))

  document.querySelector('form').reset()
  if (document.getElementById('list-section')) {
    listCars()
  }
}

const buttonAddCar = document.getElementById('buttonForm')

if (buttonAddCar) {
  buttonAddCar.addEventListener('click', addCar)
}

