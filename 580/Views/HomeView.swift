// HomeView.swift
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Фон (задний слой)
                Image("bacground2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                // Кнопки интерфейса (верхний левый угол)
                VStack {
                    HStack {
                        Button(action: {
                            print("Music Button Pressed")
                        }) {
                            VStack(spacing: 5) { // Используем VStack с небольшим отступом
                                ZStack {
                                    Image("button1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60)

                                    Image("button_music") // Внутреннее изображение
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                }
                                
                                Text("Music") // Текст под кнопкой
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            .frame(width: 60) // Ограничиваем ширину VStack, чтобы текст центрировался под кнопкой
                        }

                        Button(action: {
                            print("Sound Button Pressed")
                        }) {
                            VStack(spacing: 5) { // Используем VStack с небольшим отступом
                                ZStack {
                                    Image("button1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60)

                                    Image("button_sounds") // Внутреннее изображение
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                }
                                
                                Text("Sound") // Текст под кнопкой
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            .frame(width: 60) // Ограничиваем ширину VStack, чтобы текст центрировался под кнопкой
                        }

                        
                        Spacer() // Отжимает кнопки влево
                    }
                }
                .padding(.top, -195) // Отступ сверху
                .padding(.leading, 2) // Отступ слева
                .zIndex(2) // Убедимся, что кнопки на переднем плане
                
                // Кнопки внизу справа
                                VStack {
                                    Spacer() // Прижимает кнопки вниз
                                    HStack {
                                        Spacer() // Прижимает кнопки вправо
                                        
                                        VStack(spacing: 10) { // Кнопки идут вертикально
                                            Button(action: {
                                                print("Daily Button Pressed")
                                            }) {
                                                VStack(spacing: 5) {
                                                    ZStack {
                                                        Image("button1")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 60, height: 60)

                                                        Image("button_daily")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 30, height: 30)
                                                    }
                                                    Text("Daily")
                                                        .font(.caption)
                                                        .foregroundColor(.white)
                                                }
                                                .frame(width: 60)
                                            }
                                            
                                            Button(action: {
                                                print("Levels Button Pressed")
                                            }) {
                                                VStack(spacing: 5) {
                                                    ZStack {
                                                        Image("button1")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 60, height: 60)

                                                        Image("button_levels")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 30, height: 30)
                                                    }
                                                    Text("Levels")
                                                        .font(.caption)
                                                        .foregroundColor(.white)
                                                }
                                                .frame(width: 60)
                                            }
                                            
                                            Button(action: {
                                                print("Shop Button Pressed")
                                            }) {
                                                VStack(spacing: 5) {
                                                    ZStack {
                                                        Image("button1")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 60, height: 60)

                                                        Image("button_shop")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 30, height: 30)
                                                    }
                                                    Text("Shop")
                                                        .font(.caption)
                                                        .foregroundColor(.white)
                                                }
                                                .frame(width: 60)
                                            }
                                        }
                                        .padding(.trailing, 20) // Отступ справа
                                        .padding(.bottom, 190) // Отступ снизу
                                    }
                                }
                                .zIndex(2)
                
                // Девушка (средний слой)
                VStack {
                    Spacer()
                    HStack {
                        Image("girl1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                            .offset(x: -90, y: -102)
                        Spacer()
                    }
                }
                .zIndex(1) // Девушка поверх фона
            }
        }
    }
}

#Preview {
    HomeView()
}
