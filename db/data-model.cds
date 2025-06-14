namespace aldispaceadv;

using {cuid} from '@sap/cds/common';

entity GalacticSpacefarer : cuid {
  name                    : String(100);
  stardustCollection      : Integer;
  wormholeNavigationSkill : Integer;
  originPlanet            : String(50);
  spacesuitColor          : String(30);
  department              : Association to IntergalacticDepartment;
  position                : Association to Position;
  createdAt               : Timestamp;
  createdBy               : String;
}

entity IntergalacticDepartment {
  key ID          : UUID;
      name        : String(100);
      description : String;
}

entity Position {
  key ID    : UUID;
      title : String(100);
      level : String(50);
}

entity User {
  key ID       : UUID;
      username : String(50);
      password : String(255);
      planet   : String(50);
      roles    : String(100);
}
