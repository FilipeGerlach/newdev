import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { lessonType } from 'src/app/course.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  @Output () populateLessonEvent: EventEmitter<any> = new EventEmitter();
  @Input () lessons!: lessonType[]
  
  constructor() { }
  
  ngOnInit(): void {
    console.log('log no component room', this.lessons)
  }
  populateLesson(lesson: any) {
    this.populateLessonEvent.emit(lesson)

  }

}
