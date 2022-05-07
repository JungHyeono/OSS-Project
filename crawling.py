import requests


from bs4 import BeautifulSoup as bs

response=requests.get('https://www.coupang.com/np/search?q=%EB%8B%A8%EB%B0%B1%EC%A7%88%20%EB%B3%B4%EC%B6%A9%EC%A0%9C&channel=recent')

soup=bs(response.content,'html.parser')

L1=[]

L1=soup.find_all('div',class_='name')

for i in range(len(L1)):
    print(L1[i].get_text().strip())
