import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { RoutingRoutingModule } from './routing/routing-routing.module';
import { AppComponent } from './app.component';
import { CourseComponent } from './pages/course/course.component';
import { HeaderComponent } from './components/header/header.component';
import { LogoComponent } from './components/logo/logo.component';
import { RoomComponent } from './components/room/room.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { LessonComponent } from './components/lesson/lesson.component';
import { VimeModule } from '@vime/angular';
import { HomeComponent } from './pages/home/home.component';
import { PlayerComponent } from './player/player.component';
import { SafePipe } from './safe.pipe';

@NgModule({
  declarations: [
    AppComponent,
    CourseComponent,
    HeaderComponent,
    LogoComponent,
    RoomComponent,
    SidebarComponent,
    LessonComponent,
    HomeComponent,
    PlayerComponent,
    SafePipe
    
  ],
  imports: [
    BrowserModule,
    RoutingRoutingModule,
    VimeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
