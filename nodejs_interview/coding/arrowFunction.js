function suquare(x) {
    return x * x
}
console.log(suquare(2))


const arrow = (x) => x * x
console.log(arrow(2))



const event = {
    name: 'Birthday Party',
    guestList: ['Andrew', 'Jen', 'Mike'],
    printGuestList() {
        console.log('Guest list for ' + this.name)
        this.guestList.forEach((guest) => {
            console.log(guest + ' is attending ' + this.name)
        })
    }
}
event.printGuestList() 