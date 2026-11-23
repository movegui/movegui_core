movegui_core/
├── .github/
│   └── workflows/
│       ├── ci.yml
│       ├── start-release.yml
│       └── finish-release.yml
├── lib/
├── test/
├── analysis_options.yaml
└── pubspec.yaml

Rôle des trois workflows
1. ci.yml

Ce workflow contrôle tous les changements vers develop et master :
feature/*
    ↓ PR
develop
    ↓
format + analyze + test
Il exécute :
flutter pub get
dart format --output=none --set-exit-if-changed .
flutter analyze --fatal-infos
flutter test
Il s’exécute lors :

d’une Pull Request vers develop ou master ;
d’un push sur develop ou master.


2. start-release.yml
Il est lancé manuellement depuis GitHub → Actions.

Tu fournis une version :
1.2.0
Le workflow :

récupère develop ;
valide que 1.2.0 respecte le format SemVer ;
vérifie que le tag v1.2.0 n’existe pas ;
exécute format, analyse et tests ;
remplace la version dans pubspec.yaml ;
crée la branche release/1.2.0 ;
committe le changement ;
ouvre automatiquement une PR :
release/1.2.0 → master

3. finish-release.yml
Il est déclenché lorsque la PR suivante est mergée :
release/1.2.0 → master
Il vérifie :

que la branche commence bien par release/ ;
que release/1.2.0 correspond à la version du pubspec.yaml ;
que le tag n’existe pas déjà ;
que le formatage, l’analyse et les tests passent toujours.

Puis il crée :
tag v1.2.0
ensuite: 
GitHub Release
MoveGui Core 1.2.0

Flux obtenu
feature/catalog-item
        ↓ PR
     develop
        ↓
Start MoveGui Core Release
version = 1.2.0
        ↓
release/1.2.0
        ↓ PR
      master
        ↓ merge
     tag v1.2.0
        ↓
GitHub Release 1.2.0