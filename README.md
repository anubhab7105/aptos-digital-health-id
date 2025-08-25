# Digital Health ID - Aptos Smart Contract

A simple NFT-based digital health ID smart contract built on the Aptos blockchain.

## Overview

This project implements a basic digital health ID system using NFTs on the Aptos blockchain. Each health ID is represented as an NFT that stores medical data and can be updated by the owner.

## Features

- Create a digital health ID as an NFT
- Update medical data associated with the health ID
- Simple and secure implementation using Aptos' framework

## Project Structure
aptos-digital-health-id/ <br>
├── Move.toml <br>
├── sources/<br>
│ └── digital_health_id.move <br>
└── README.md <br>

### create_health_id(owner: &signer, medical_data: vector<u8>)
Creates a new health ID NFT with initial medical data

### update_medical_data(owner: &signer, new_medical_data: vector<u8>)
Updates the medical data associated with an existing health ID

## Setup and Deployment

git clone https://github.com/anubhab7105/aptos-digital-health-id.git <br>
cd aptos-digital-health-id