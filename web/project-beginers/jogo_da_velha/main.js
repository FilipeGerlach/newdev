let counter = 0;



  document.getElementById('game').addEventListener('click', () => {  
  
    
    if(counter % 2 == 0) {
      event.target.innerHTML = 'X'
      
    }
    else{
      event.target.innerHTML = 'O'
    }
    if(document.getElementById('1').innerHTML === 'X' & document.getElementById('2').innerHTML === 'X' & document.getElementById('3').innerHTML === 'X' || document.getElementById('4').innerHTML === 'X' & document.getElementById('5').innerHTML === 'X' & document.getElementById('6').innerHTML === 'X'||  document.getElementById('7').innerHTML === 'X' & document.getElementById('8').innerHTML === 'X' & document.getElementById('9').innerHTML === 'X' ||  document.getElementById('1').innerHTML === 'X' & document.getElementById('4').innerHTML === 'X' & document.getElementById('7').innerHTML === 'X'|| document.getElementById('2').innerHTML === 'X' & document.getElementById('5').innerHTML === 'X' & document.getElementById('8').innerHTML === 'X' || document.getElementById('3').innerHTML === 'X' & document.getElementById('6').innerHTML === 'X' & document.getElementById('9').innerHTML === 'X' || document.getElementById('1').innerHTML === 'X' & document.getElementById('5').innerHTML === 'X' & document.getElementById('9').innerHTML === 'X' || document.getElementById('3').innerHTML === 'X' & document.getElementById('5').innerHTML === 'X' & document.getElementById('7').innerHTML === 'X'){
      alert('voce ganhou xisinho')
    }
    if(document.getElementById('1').innerHTML === 'O' & document.getElementById('2').innerHTML === 'O' & document.getElementById('3').innerHTML === 'O' || document.getElementById('4').innerHTML === 'O' & document.getElementById('5').innerHTML === 'O' & document.getElementById('6').innerHTML === 'O'||  document.getElementById('7').innerHTML === 'O' & document.getElementById('8').innerHTML === 'O' & document.getElementById('9').innerHTML === 'O' ||  document.getElementById('1').innerHTML === 'O' & document.getElementById('4').innerHTML === 'O' & document.getElementById('7').innerHTML === 'O'|| document.getElementById('2').innerHTML === 'O' & document.getElementById('5').innerHTML === 'O' & document.getElementById('8').innerHTML === 'O' || document.getElementById('3').innerHTML === 'O' & document.getElementById('6').innerHTML === 'O' & document.getElementById('9').innerHTML === 'O' || document.getElementById('1').innerHTML === 'O' & document.getElementById('5').innerHTML === 'O' & document.getElementById('9').innerHTML === 'O' || document.getElementById('3').innerHTML === 'O' & document.getElementById('5').innerHTML === 'O' & document.getElementById('7').innerHTML === 'O'){
      alert('voce ganhou bolinha')
    }

    
    counter += 1;
  })

  document.getElementById('reset'). addEventListener('click', () => {
   location.reload()
  })
