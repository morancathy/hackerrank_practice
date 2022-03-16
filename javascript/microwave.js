//  Microwave timers are smart enough to know that when you press 90 for seconds, you mean '01:30',
//  We want to have a "smart display" that will convert this to the lowest form of minutes and seconds, rather than leaving it as 90 seconds.
//  Build a class that accepts buttons entered and converts them to the proper display panel time.
class MicrowavedFood {
  constructor(num) {
    this.num = num
    this.minutes = 0
    this.seconds = 0
  }
  timer(num) {
    if (num === 100) {
      return `01:00`
    } else if (num < 100) {   
      this.minutes = Math.round(num / 60).toString()
      while(this.minutes.length < 2) this.minutes = 0 + this.minutes
      this.seconds = num % 60
      return `${this.minutes}:${this.seconds}`
    }
    else {
      let timeArr = Array.from(String(num), Number)      
      while(timeArr.length < 4) timeArr.unshift(0)
      this.seconds = timeArr.slice(-2).join("")
      this.minutes = timeArr.splice(0, 2).join("")
      if (this.seconds > 59) {
        this.convertSeconds(this.minutes, this.seconds)
      } 
      return `${this.minutes}:${this.seconds}`
    }  
  }
  convertSeconds(min, sec) {
    this.minutes = min + (sec / 60)
    this.seconds = Math.round(sec % 60)
    while(this.seconds.length < 2) timeArr.unshift(0)
  }
}
const hotpockets = new MicrowavedFood

console.log(hotpockets.timer(59))
