import requests, json, datetime, os

resp = requests.get("https://jsonplaceholder.typicode.com/posts")
timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
os.makedirs("/app/output", exist_ok=True)
with open(f"/app/output/posts_{timestamp}.json", "w") as f:
    json.dump(resp.json(), f, indent=2)
print(f"Saved posts_{timestamp}.json")
