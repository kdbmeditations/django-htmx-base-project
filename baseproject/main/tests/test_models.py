import pytest
from django.test import TestCase
from main.models import MyModel


class TestMyModel(TestCase):
    def test_create_my_model(self):
        model_instance = MyModel.objects.create(name="Test")
        assert MyModel.objects.count() == 1
        assert model_instance.name == "Test"
