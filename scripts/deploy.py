from brownie import network, accounts, SimpleStorage
from scripts.helpers import get_accounts

def deploy_project():
    account = get_accounts()
    print("Deploying Contract")
    simple_storage = SimpleStorage.deploy({'from':account})
    print("Initial Contract Value:", simple_storage.getStorageNumber())
    print("Making Contract Transaction")
    tx = simple_storage.setStorageNumber(20,"Hello")
    tx.wait(1)
    print("New Contract Value")
    print(simple_storage.getStorageNumber())




def main():
    deploy_project()