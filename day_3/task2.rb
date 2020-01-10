avengers = {
  iron_man: {
    name: 'Tony Stark',
    attacks: {
      punch: 10,
      kick: 100
    }
  },
  hulk: {
    name: 'Bruce Banner',
    attacks: {
      smash: 1000,
      roll: 500
    }
  }
}

p avengers[:hulk][:attacks][:smash]
