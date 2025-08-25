module MyModule::DigitalHealthID {

    use aptos_framework::signer;
    use aptos_framework::simple_nft;

    struct HealthID has key {
        nft_id: simple_nft::TokenId,
        medical_data: vector<u8>,
    }

    public fun create_health_id(
        owner: &signer,
        medical_data: vector<u8>
    ) {
        let nft_id = simple_nft::create_token(
            owner,
            b"Digital Health ID",
            b"Health ID NFT",
            medical_data,
            1,
        );
        move_to(owner, HealthID { nft_id, medical_data });
    }

    public fun update_medical_data(
        owner: &signer,
        new_medical_data: vector<u8>
    ) acquires HealthID {
        let health_id = borrow_global_mut<HealthID>(signer::address_of(owner));
        health_id.medical_data = new_medical_data;
        simple_nft::update_token_data(
            &mut health_id.nft_id,
            new_medical_data
        );
    }
}