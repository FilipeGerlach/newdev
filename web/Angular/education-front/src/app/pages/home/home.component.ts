import { Component, OnInit } from '@angular/core';
import { CourseResponseType, CourseService } from 'src/app/course.service';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  courseService: CourseService
  course: any
  

  constructor(courseService: CourseService) {
    this.courseService = courseService
    this.course = {} as CourseResponseType
   }

  async ngOnInit(): Promise<void> {
    this.course = await this.courseService.getCourse()

    console.log(this.course)
    

    
    

  }

}