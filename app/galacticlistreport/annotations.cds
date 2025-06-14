using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.GalacticSpacefarer with @(
      UI.UpdateHidden: false,

    UI.SelectionFields           : [
        name,
        stardustCollection,
        wormholeNavigationSkill,
        originPlanet,
        spacesuitColor
    ],


    UI.Identification            : [{
        $Type: 'UI.DataField',
        Value: name
    }],


    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Stardust Collection',
                Value: stardustCollection,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Wormhole Navigation Skill',
                Value: wormholeNavigationSkill,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Origin Planet',
                Value: originPlanet,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Spacesuit Color',
                Value: spacesuitColor,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Created At',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Created By',
                Value: createdBy,
            },
        ],
    },

    UI.FieldGroup #Metadata      : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Created At',
                Value: createdAt
            },
            {
                $Type: 'UI.DataField',
                Label: 'Created By',
                Value: createdBy
            }
        ]
    },

    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },


        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'MetadataFacet',
            Label : 'Other Information',
            Target: '@UI.FieldGroup#Metadata'
        }


    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Stardust Collection',
            Value: stardustCollection,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Wormhole Navigation Skill',
            Value: wormholeNavigationSkill,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Origin Planet',
            Value: originPlanet,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Space Suit Color',
            Value: spacesuitColor,
        },
    ],
);

annotate service.GalacticSpacefarer with {
    name                    @Common.Label: 'Spacefarer Name';

    stardustCollection      @Common.Label       : 'Stardust Collection'
                            @Common.FieldControl: #Optional;

    wormholeNavigationSkill @Common.Label: 'Wormhole Navigation Skill';
    originPlanet            @Common.Label: 'Origin Planet';

    spacesuitColor          @Common.Label       : 'Spacesuit Color'
                            @Common.FieldControl: #Optional;
};

annotate service.GalacticSpacefarer with {
    department @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'IntergalacticDepartment',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: department_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'name',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description',
            },
        ],
    }
};

annotate service.GalacticSpacefarer with {
    position @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Position',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: position_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'title',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'level',
            },
        ],
    }
};
