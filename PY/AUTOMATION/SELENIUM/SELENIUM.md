
```py
import os
from selenium import webdriver
from selenium.webdriver import Chrome
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
​
def GoT_imdbRating():
    os.environ['WDW_LOG_LEVEL'] = '0'
    options = webdriver.ChromeOptions()
    options.add_experimental_option("detach", True)
    website = 'https://www.imdb.com/'
    path = 'C:\Program Files\SeleniumDrivers\chromedriver.exe'
    service = Service(executable_path=path)
    driver = webdriver.Chrome(service=service, options=options)
    wait = WebDriverWait(driver, 10)
    driver.get(website)
​
    #### 2nd slide
    #### visit imdb.com and search for GoT
​
    search_tab = wait.until(ec.element_to_be_clickable((By.XPATH, '//*[@id="suggestion-search"]')))
    search_tab.send_keys('Game of Thrones')
​
    search_button = driver.find_element(By.ID, 'suggestion-search-button')
    search_button.click()
​
    #### 3rd slide
    #### click the first result
​
    search_result = wait.until(ec.element_to_be_clickable((By.XPATH, f'/html/body/div[2]/main/div[2]/div[3]/section/div/div[1]/section[2]/div[2]/ul/li[1]/div[2]/div/a')))
    search_result.click()
​
    #### 4th slide
    #### verify the rating is 9.4
​
    rating = driver.find_element(By.CLASS_NAME,'sc-e457ee34-1').text
​
    if rating == 9.4:
        print('the received .ppt is still up-to-date')
    else:
        print('the actual rating is:', rating)
​
    driver.close()
​
GoT_imdbRating()
```
