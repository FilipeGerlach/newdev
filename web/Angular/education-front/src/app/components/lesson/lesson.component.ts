import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { lessonResponseType, LessonService } from 'src/app/lesson.service';

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.css']
})
export class LessonComponent implements OnInit {
  @Output () getLessonEvent : EventEmitter<any> = new EventEmitter();
  @Input () lessonId?: number
  @Input () title?: string

  lessonService: LessonService
  lesson?: lessonResponseType

  constructor(lessonService: LessonService) { 
    this.lessonService = lessonService
    this.lesson = {} as lessonResponseType
  }

  ngOnInit(): void {
    
  }async onClickLesson (id: any){
    this.lesson = await this.lessonService.getLessonsById(id)
    this.getLessonEvent.emit(this.lesson)
    
  }

}
