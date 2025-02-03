const command = process.argv[2];
if (command == 'add') {
    console.log('added a note..!')
} else if (command == 'remove') {
    console.log('removed a note..!')
}

//node processargv.js add || remove