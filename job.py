from fastapi import FastAPI, HTTPException
import requests

app = FastAPI()

url = "https://jsearch.p.rapidapi.com/search"

headers = {
    "X-RapidAPI-Key": "c92d6438b5msh3c392b5a1aa146ep1473aejsn6d9acf702aca",
    "X-RapidAPI-Host": "jsearch.p.rapidapi.com"
}

@app.get("/")
def get_job(query: str = None):
    if query is None:
        raise HTTPException(status_code=400, detail="Query parameter is required")

    querystring = {"query": query}

    response = requests.get(url, headers=headers, params=querystring)

    if response.status_code != 200:
        raise HTTPException(status_code=response.status_code, detail="Failed to fetch data from external API")

    # Extracting only specific fields from the response data
    extracted_data = []
    for job in response.json()["data"]:
        job_info = {
            "employer_name": job.get("employer_name"),
            "job_employment_type": job.get("job_employment_type"),
            "job_title": job.get("job_title"),
            "job_apply_link": job.get("job_apply_link")
        }
        extracted_data.append(job_info)

    return extracted_data
