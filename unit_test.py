import unittest
from app import app

class TestFlaskApp(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_read_page(self):
        # check if the page is loaded
        response = self.app.get('/') # by accessing the root page to check if the page is loaded
        self.assertEqual(response.status_code, 200, "Response should be 200 OK")
        pass

    def test_add_item(self):
        # Test adding an item
        response = self.app.post('/add', data=dict(item="Test Item"), follow_redirects=True)
        self.assertEqual(response.status_code, 200, "Response should be 200 OK")
        pass
    
        
    def test_update_item(self):
        response = self.app.post("/update/0", data=dict(item="Updated Item"), follow_redirects=True)
        self.assertEqual(response.status_code, 200, "Response should be 200 OK")
        pass

    def test_delete_item(self):
        response = self.app.get("/delete/0")
        self.assertEqual(response.status_code, 302, "Response should be 302 OK")
        pass

if __name__ == '__main__':
    unittest.main()
