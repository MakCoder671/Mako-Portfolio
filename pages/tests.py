from django.test import TestCase


class PublicPageTests(TestCase):
    # Confirms Django can return each public portfolio page
    def test_home_page_loads(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)

    def test_about_page_loads(self):
        response = self.client.get('/about/')
        self.assertEqual(response.status_code, 200)

    def test_projects_page_loads(self):
        response = self.client.get('/projects/')
        self.assertEqual(response.status_code, 200)

    def test_contact_page_loads(self):
        response = self.client.get('/contact/')
        self.assertEqual(response.status_code, 200)

# Create your tests here.
