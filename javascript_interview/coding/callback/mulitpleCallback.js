function fetchTickets(projectId, callback) {
    console.log(`Fetching tickets: ${projectId}`);
    const tickets = ["T1", "T2", "T3"];
    callback(tickets);
}

function createDashboard(tickets, callback) {
    console.log(`Creating dashboard`);
    const dashboardId = "DASHBOARD-1";
    callback(dashboardId);
}

function sendNotification(dashboardId, callback) {
    console.log(`Notifying User: ${dashboardId}`);
    callback();
}

// Using the callback functions
fetchTickets("PROJECT-1", (tickets) => {
    createDashboard(tickets, (dashboardId) => {
        sendNotification(dashboardId, () => {
            console.log("Notification sent");
        });
    });
});