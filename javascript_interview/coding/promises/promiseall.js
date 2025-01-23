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

Promise.all([
    fetchProjectDetails(),
    fetchTeamMembers(),
    fetchRecentActivities(),
])
    .then(([project, team, activities]) => {
        console.log("Project Details:", project);
        console.log("Team Members:", team);
        console.log("Recent Activities:", activities);
    })
    .catch((error) => {
        console.error("Error fetching data:", error);
    });

