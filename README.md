# 사용자 인바디 정보에 기반한 운동추천 application

## 목적
본 프로젝트는 2022-1학기 오픈소스 기초프로젝트에서 시작된 프로젝트이다. 우리는 보통의 사람들이 인바디 검사지를 보고 자신의 체지방과 근육량, 등 여러 요소들이 부족하거나 많다는 것을 확인할 수 있고, 자신의 몸 상태를 쉽게 해석할 수 있을 것이며, 이를 토대로 어떤 부위의 운동이 필요하다는 것을 알 수 있을 것이다. 우리앱의 목적은 사용자의 몸 상태를 확인하고 식습관과 운동방향을 바로잡기 위한 앱이다. 우린 검사지로 몸상탠 알 수 있지만 세부적으로 보여주는 부위별 데이터로 무슨운동, 어떻게 체형을 만들지 몰라 포기할 때가 많다. 그래서 우리는 이번 프로젝트로 사용자의 이상적인 체형을 만들 수 있도록 추천해줄 수 있는 앱을 만들고자 한다.

# 설치 방법
https://drive.google.com/file/d/16W8q8NiqaN-VnJMS2VC7iaYkkwpbrex3/view?usp=sharing
apk설치후 이용하면 됩니다.

# 의존성 명시
사용된 패키지
  url_launcher: ^5.7.10
  shared_preferences: ^2.0.13
  intl: ^0.17.0  
  http: ^0.12.0+2

Run/Debug Configurations설정에 다음을 추가하세요. 
--no-sound-null-safety --web-renderer html

AndroidManifest.xml에 다음을 추가하세요
 android:usesCleartextTraffic="true"

# 실행 방법

//동영상

1. 앱 실행합니다.
2. 인바디 등록 페이지에서 사용자 정보 기입합니다.
3. 받은 데이터를 분석해 운동 추천 페이지로 이동시킵니다.
4. 부위별로 알고 싶은 운동을 설명받고 유튜브바로가기를 눌러서 운동추천을 받습니다.
이외의 출석체크기능과 운동기구 추천 페이지도 추가하였습니다.

## License
The MIT License (MIT)

Copyright (c) 2022 Rabbitcal

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# 멤버
juhojang@hotmail.com(충북대학교, 박주호)
kimjunho1231@naver.com(충북대학교, 김준호)
eenncckrr@gmail.com(충북대학교, 정현호)
