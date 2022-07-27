import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit {
  @Input () name: string[] = []
  @Input () linkYoutube: string = ''
  @Input () linkInstagram: string = ''
  @Input () bio: string = ''
  @Input () subTitleText = ''

  color: string= '#000';

  showFruit: boolean = true
  author: string = 'filipe'

  addNameOnList:any
  remove: any

  list: string[] = []
  constructor() { }

  ngOnInit(): void {
    this.addNameOnList = () =>{
      this.list.push('filipe')
      console.log('adicionou na lista', this.list)
    }
    let nota = 8
    this.remove = (index: number) =>{
      console.log('->', index)
      this.list.splice(index, 1)
    }
    if (nota<6){
      this.color = 'red'
    }else if (nota === 6){
      this.color = 'yellow'
    }
    else{
      this.color = 'green'
    }
    console.log('asdklçfjhnsdfhasdklhga')
  }

}
