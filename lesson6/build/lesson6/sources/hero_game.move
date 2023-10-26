module lesson6::hero_game {
    use sui::object::{UID,Self};
    use sui::tx_context::{TxContext,Self};
    use sui::transfer;
    use std::string::{Self, String};

    struct Hero has key {
        id: UID,
        name: String,
        hp: u64,
        experience: u64,
    }

    struct Sword {
        id: UID,
        attack: u64,
        strenght: u64,
    }

    struct Armor {
        id: UID,
        defense: u64,
    }

    struct Monter {
        id: UID,
        hp: u64,
        strenght: u64,
    }

    struct GameInfo has key {
        id: UID,
        admin: address
    }

    fun init(ctx: &mut TxContext) {
	let game = GameInfo {
	    id:  object::new(ctx),
	    admin: tx_context::sender(ctx),
	};

    	transfer::transfer(game, tx_context::sender(ctx));
    }

    

//     public entry fun create_hero() {}
//     fun create_sword() {}
//     fun create_armor() {}

//     fun create_monter() {}

//     fun level_up_hero() {}
//     fun level_up_sword() {}
//     fun level_up_armor() {}

//     public entry fun attack_monter() {}
}
