Pao_Ying_Chub <- function(){
  count <- 0
  count_win <- 0
  options <- c("rock", "paper", "scissors")
  print("เลือกพิมพ์ 'scissors','paper','rock' ")

  
  print(options)
  print("เอาเลยเลือกมาอันนึง")
  user_select <- readLines("stdin",1)
  lose <- c("กระจอกจัดเลยหว่ะ","อ่อนชิบหาย","พยายามใหม่สู้ๆน้า")
  computer_select <- sample(options, 1)
  
  while(TRUE){
    if (toupper(user_select) == "ENOUGH"){
      print("โชคดีนะไอกระจอก")
      print(paste("เล่นไปแค่",count,"ตา และ ชนะ",count_win,"ครั้งเอง"))
      
      break
      
    } else if (!tolower(user_select) == "rock" & !tolower(user_select) == "paper" & !tolower(user_select) =="scissors"){

      print("อ่านกฏหน่อยไอหนุ่ม เค้าให้พิมพ์ แค่ 'scissors','paper','rock' ")
      
      print("เอาใหม่อีกรอบไอเวน")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
      
    } else if (computer_select == tolower(user_select)){

      print(paste(computer_select,"เสมอโว้ย"))
      count <- count+1

      print("มาอีกครั้งนึง")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
    } else if (
      computer_select == "rock" & tolower(user_select) == "paper") {

      print(paste(computer_select,"กระดาษอาจห่อหินได้ แต่ไม่อาจจะห่อใจเราได้นะ"))
      count <- count+1
      count_win <- count_win+1

      print("เครื่องกำลังร้อนเลยไอเวน เข้ามาาาา")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
    } else if (
      computer_select == "paper" & tolower(user_select) == "scissors") {

      print(paste(computer_select,"ต่อให้กรรไกรจะตัดกระดาษขาดแต่ก็ไม่อาจตัดความสัมพันธ์ของเราขาดได้นะ"))
      count <- count+1
      count_win <- count_win+1

      print("มาเอาใหม่!คราวนี้แหละเราจะตัดเธอให้ขาดให้ได้เลย....")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
    } else if (
      computer_select == "scissors" & tolower(user_select) == "rock") {

      print(paste(computer_select,"ค้อนอ่ะเอาไว้ทุบกรรไกร แต่ใครเอาไปทุบคลอง....อะไร๊!!!"))
      count <- count+1
      count_win <- count_win+1

      print("เอาจริงๆเอ็งแค่โชคดีแค่นั้นแหละ")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
    } else {

      print(paste(computer_select,sample(lose,1)))
      count <- count+1
      print("มาเอาใหม่ให้อีกรอบ")
      user_select <- readLines("stdin",1)
      computer_select <- sample(options, 1)
    }
  }
}

Pao_Ying_Chub()