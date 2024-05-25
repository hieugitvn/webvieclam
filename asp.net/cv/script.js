document.addEventListener('DOMContentLoaded', function () {
    fetch('api.aspx')
        .then(response => response.json())
        .then(data => {
            let table = document.getElementById('jobsTable');
            data.forEach(job => {
                let row = table.insertRow();
                for (let key in job) {
                    let cell = row.insertCell();
                    if (job.hasOwnProperty(key)) {
                        let value = job[key];
                        // Ki?m tra n?u giá tr? là chu?i ð?nh d?ng ngày gi?
                        if (typeof value === 'string' && value.startsWith('/Date(')) {
                            value = new Date(parseInt(value.substr(6))).toLocaleString(); // Chuy?n ð?i và ð?nh d?ng ngày gi?
                        }
                        cell.textContent = value;
                    }
                }
            });
        })
        .catch(error => console.error('Error fetching jobs:', error));
});
