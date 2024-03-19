#!/bin/bash
#Парсим пабспек для получения версии и номера сборки
set -e
file=$(cat pubspec.yaml)
fullVersion=$(echo | grep -i -e "version: " pubspec.yaml)
buildName=$(echo $fullVersion | cut -d " " -f 2 | cut -d "+" -f 1)
buildNumber=$(echo $fullVersion | cut -d "+" -f 2 )
echo "$fullVersion BUILD_NAME ${buildName} BUILD_NUMBER ${buildNumber}"
# Шаг 1 ****************************************************************************
# Делаем тестовые сборки для .env.prod
# cp assets/env/.env.prod assets/env/.env
#Собираем апк для тестов
flutter pub get
flutter build apk --build-name=$buildName --build-number=$buildNumber
cp build/app/outputs/flutter-apk/app-release.apk "build/app/outputs/flutter-apk/LIBB-$buildName+$buildNumber TEST APP.apk"
#Собираем архив для тестфлая/публикации
# cp assets/env/.env.dev assets/env/.env
# flutter pub get
# flutter build ipa --build-name=$buildName --build-number=$buildNumber
# cp -R build/ios/archive/Runner.xcarchive "build/ios/archive/APP-$buildName+$buildNumber TEST.xcarchive"