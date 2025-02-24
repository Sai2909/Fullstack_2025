
const longestWord = (word) => {
    let wordSplit = word.split(" ");
    let store = " "
    for (let index = 0; index < wordSplit.length; index++) {
        if (wordSplit[index].length > store.length) {
            store = wordSplit[index];
        }

    }
    return store;
}
console.log(longestWord("my name is saikiran"))


//smallest
function findSmallestWord() {
    const sentence = "Find the smallest word";
    const words = sentence.split(' ');
    let smallestWord = words[0];
  
    for (let i = 1; i < words.length; i++) {
        if (words[i].length < smallestWord.length) {
            smallestWord = words[i];
        }
    }
    console.log(smallestWord);
  }
  
  findSmallestWord();