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
  constructor() { }

  ngOnInit(): void {
  }

}
