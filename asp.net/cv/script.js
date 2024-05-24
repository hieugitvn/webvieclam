document.addEventListener('DOMContentLoaded', function () {
    fetch('/api.aspx')
        .then(response => response.json())
        .then(data => {
            let tableBody = document.getElementById('jobHistoryTable').getElementsByTagName('tbody')[0];

            data.forEach(row => {
                let newRow = tableBody.insertRow();

                let cellJobId = newRow.insertCell(0);
                cellJobId.textContent = row.job_id;

                let cellEmployerName = newRow.insertCell(1);
                cellEmployerName.textContent = row.employer_name;

                let cellJobEmploymentType = newRow.insertCell(2);
                cellJobEmploymentType.textContent = row.job_employment_type;

                let cellJobTitle = newRow.insertCell(3);
                cellJobTitle.textContent = row.job_title;

                let cellJobApplyLink = newRow.insertCell(4);
                cellJobApplyLink.textContent = row.job_apply_link;
            });
        })
        .catch(error => console.error('Error fetching data:', error));
});
