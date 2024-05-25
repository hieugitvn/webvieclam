from fastapi import FastAPI, HTTPException
import requests

app = FastAPI()

url = "https://jsearch.p.rapidapi.com/search"

headers = {
    "X-RapidAPI-Key": "c92d6438b5msh3c392b5a1aa146ep1473aejsn6d9acf702aca",
    "X-RapidAPI-Host": "jsearch.p.rapidapi.com"
}

@app.get("/")
def read_root():
    return {"Hà Trung Hiếu"}

@app.get("/job")
def get_job(query: str = None):
    if query is None:
        raise HTTPException(status_code=400, detail="Query parameter is required")

    querystring = {"query": query}

    response = requests.get(url, headers=headers, params=querystring)

    if response.status_code != 200:
        raise HTTPException(status_code=response.status_code, detail="Failed to fetch data from external API")

    # Trích xuất và dịch các trường cần thiết từ dữ liệu phản hồi
    extracted_data = []
    for job in response.json()["data"]:
        job_info = {
            "macongviec": job.get("job_id"),
            "tennhatuyendung": job.get("employer_name"),
            "trangwebnhatuyendung": job.get("employer_website"),
            "loaihinhcongviec": job.get("job_employment_type"),
            "tencongviec": job.get("job_title"),
            "lienketungtuyen": job.get("job_apply_link"),
            "ngaydangtinUTC": job.get("job_posted_at_datetime_utc"),
            "ngayhethanUTC": job.get("job_offer_expiration_datetime_utc"),
            "thanhpho": job.get("job_city"),
            "quocgia": job.get("job_country")
        }
        extracted_data.append(job_info)

    return extracted_data
