//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain {
    
    var storyNumber = 0
    
    let story = [
        Story(
            title: "У вашего автомобиля лопнула шина на извилистой дороге, в глуши, без приема мобильного телефона. Ты решил отправиться автостопом. Ржавый пикап грохотает на остановку рядом с вами. Мужчина с широкополой шляпой и бездушными глазами открывает вам пассажирскую дверь и говорит: 'Нужно подвезти , мальчик?'",
            choice1: "Я заскочу. Спасибо за помощь!", choice1Destination: 2,
            choice2: "Лучше сначала спрошу его, убийца ли он", choice2Destination: 1
        ),
        Story(
            title: "Он медленно кивает, его не смущает вопрос.",
            choice1: "По крайней мере, он честен. Я залезу.", choice1Destination: 2,
            choice2: "Подождите, я знаю, как поменять колесо.", choice2Destination: 3
        ),
        Story(
            title: "Когда вы начинаете ехать, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он злится все больше и больше. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрезанных пальца и кассету. Элтона Джона. Он тянется к бардачку",
            choice1: "Я люблю Элтона Джона! Передам ему кассету.", choice1Destination: 5,
            choice2: "Он или я! Беру нож и наношу ему удар", choice2Destination: 4
        ),
        Story(
            title: "Что? Оставь это полиции! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти в результате несчастных случаев для большинства взрослых возрастных групп?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Когда вы пробиваете ограждение и летите к зазубренным камням внизу, вы размышляете о сомнительной мудрости наносить удары ножом кому-то, когда он ведет машину, в которой вы находитесь.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Вы сближаетесь с убийцей, напевая куплеты «Можете ли вы почувствовать любовь сегодня вечером». Он высадит тебя в следующем городе. Прежде чем уйти, он спрашивает, знаете ли вы хорошие места, где можно сбрасывать тела. Вы отвечаете: «Попробуйте пирс.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return story[storyNumber].title
    }
    
    func getChoice1() -> String {
        return story[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return story[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        if userChoice == story[storyNumber].choice1 {
            storyNumber = story[storyNumber].choice1Destination
            print(storyNumber)
        } else {
            storyNumber = story[storyNumber].choice2Destination
            print(storyNumber)
        }
    }
}
