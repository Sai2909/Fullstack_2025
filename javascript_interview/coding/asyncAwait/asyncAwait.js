/*
https://github.com/iamshubhamjangle/HackTheCode/blob/main/Javascript-Interview-Series/Day8-async-await.md
https://www.book2s.com/tutorials/javascript-async.html

*/




//using promises
// const fetchProjectDetails = () =>
//     fetch("https://jsonplaceholder.typicode.com/posts/1").then((res) =>
//       res.json()
//     );

//   const fetchTeamMembers = () =>
//     fetch("https://jsonplaceholder.typicode.com/users/1").then((res) =>
//       res.json()
//     );

//   const fetchRecentActivities = () =>
//     fetch("https://jsonplaceholder.typicode.com/comments/1").then((res) =>
//       res.json()
//     );

//   fetchProjectDetails()
//     .then((project) => {
//       console.log("Project Details:", project.title);
//       return fetchTeamMembers();
//     })
//     .then((teamMembers) => {
//       console.log("Team Members:", teamMembers.name);
//       return fetchRecentActivities();
//     })
//     .then((activities) => {
//       console.log("Recent Activities:", activities.name);
//     })
//     .catch((error) => {
//       console.error("Error fetching data:", error);
//     });




const fetchProjectDetails = () =>
    fetch("https://jsonplaceholder.typicode.com/posts/1").then((res) =>
        res.json()
    );

const fetchTeamMembers = () =>
    fetch("https://jsonplaceholder.typicode.com/users/1").then((res) =>
        res.json()
    );

const fetchRecentActivities = () =>
    fetch("https://jsonplaceholder.typicode.com/comments/1").then((res) =>
        res.json()
    );

const fetchAllData = async () => {
    try {
        const project = await fetchProjectDetails();
        console.log("Project Details:", project.title);

        const teamMembers = await fetchTeamMembers();
        console.log("Team Members:", teamMembers.name);

        const activities = await fetchRecentActivities();
        console.log("Recent Activities:", activities.name);
    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

fetchAllData();