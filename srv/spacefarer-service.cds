using {aldispaceadv as my} from '../db/data-model';

service SpacefarerService {

  @odata.draft.enabled
  entity GalacticSpacefarer      as projection on my.GalacticSpacefarer;

  entity IntergalacticDepartment as projection on my.IntergalacticDepartment;
  entity Position                as projection on my.Position;
  entity User                    as projection on my.User;
}
