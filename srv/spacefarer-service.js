const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
  const { GalacticSpacefarer } = this.entities;

  // BEFORE CREATE: Validate and enhance data
  this.before('CREATE', GalacticSpacefarer, (req) => {
    const {
      name,
      stardustCollection,
      wormholeNavigationSkill,
      originPlanet,
      spacesuitColor
    } = req.data;

    // Mandatory fields validation
    if (!name || name.trim() === '') {
      req.error(400, 'Name is mandatory.');
    }

    if (wormholeNavigationSkill === undefined || wormholeNavigationSkill === null) {
      req.error(400, 'Wormhole navigation skill is mandatory.');
    } else if (
      typeof wormholeNavigationSkill !== 'number' ||
      wormholeNavigationSkill < 0 ||
      wormholeNavigationSkill > 100
    ) {
      req.error(400, 'Wormhole navigation skill must be between 0 and 100.');
    }

    if (!spacesuitColor || spacesuitColor.trim() === '') {
      req.error(400, 'Spacesuit color is mandatory.');
    }

    if (stardustCollection === undefined || stardustCollection === null) {
      req.error(400, 'Stardust collection is mandatory.');
    } else if (typeof stardustCollection !== 'number' || stardustCollection < 0) {
      req.error(400, 'Stardust collection must be a non-negative number.');
    }

    if (!originPlanet || originPlanet.trim() === '') {
      req.error(400, 'Origin Planet color is mandatory.');
    }

  });

  // AFTER CREATE: Notify user in Fiori UI and simulate email
  this.after('CREATE', GalacticSpacefarer, (data, req) => {
    req.info(
      `🚀 Welcome ${data.name} from ${data.originPlanet}!\n` +
      `✨ Stardust: ${data.stardustCollection}\n` +
      `🌀 Wormhole Skill: ${data.wormholeNavigationSkill}\n` +
      `📧 Cosmic notification: Email sent to ${data.name}`
    );
  });

});
