import { Injectable } from '@angular/core';

export type instructorType ={
  avatarUrl: string
  fullName: string
}
export type lessonResponseType ={
  title: string
  description: string
  videoId: string
  instructor: instructorType
}

@Injectable({
  providedIn: 'root'
})
export class LessonService {

  constructor() { }

  async getLessonsById(id: number):Promise<lessonResponseType> {
    const response = await fetch(`http://localhost:4000/lessons/${id}`)

    const data = await response.json() as lessonResponseType

    return data
  }
}
