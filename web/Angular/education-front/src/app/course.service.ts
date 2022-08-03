import { Injectable } from '@angular/core';

export type lessonType ={
  id: number
  title: string
  videoId: string
  description: string
}

export type CourseResponseType ={
  title: string
  description: string
  lessons: lessonType[]
}
@Injectable({
  providedIn: 'root'
})

export class CourseService {

  constructor() { 

  }

  async getCourseById(id: number):Promise<CourseResponseType>{
    const that = this;
    const response = await fetch(`http://localhost:4000/courses/${id}`)

    const data = await response.json() as CourseResponseType
    
    console.log('get couse by ID', data)
    return data
  }
  async getCourse():Promise<CourseResponseType>{
    const that = this;
    const response = await fetch(`http://localhost:4000/courses`)

    const data = await response.json() as CourseResponseType
    
    console.log('get couse', data)
    return data
  }
}
