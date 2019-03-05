from robot.libraries.BuiltIn import BuiltIn
import requests

GOOGLE_URL = "https://www.google.com"


class SearchKeywords:

    def __init__(self):
        self.builtin = BuiltIn()
        self.debug = 0
        self.headers = {'Content-type': 'application/json',
                        'Accept': 'application/json'}

    def search_on_google(self, query='automox'):
        base_endpoint = 'search'

        params = { 'q': query}

        url = "{}/{}".format(GOOGLE_URL, base_endpoint)

        return requests.get(url, params=params, headers=self.headers)
