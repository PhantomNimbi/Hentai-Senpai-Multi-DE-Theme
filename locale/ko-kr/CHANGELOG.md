# 변경 로그

> 🌐 **언어:** [English](../en-us/CHANGELOG.md) | [日本語](../ja-jp/CHANGELOG.md) | [Español](../es-es/CHANGELOG.md) | [Français](../fr-fr/CHANGELOG.md) | [Deutsch](../de-de/CHANGELOG.md) | [Italiano](../it-it/CHANGELOG.md) | [中文](../zh-cn/CHANGELOG.md) | **한국어** | [Русский](../ru-ru/CHANGELOG.md) | [Português](../pt-br/CHANGELOG.md)

Hentai-Senpai GTK Theme 프로젝트의 모든 주요 변경 사항은 이 파일에 문서화됩니다.

형식은 [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)를 기반으로 하며,
이 프로젝트는 [Semantic Versioning](https://semver.org/spec/v2.0.0.html)을 준수합니다.

## [미출시]

### 추가

- **GitHub Issue 템플릿**
  - 환경 체크리스트가 포함된 버그 보고서 템플릿
  - 사용 사례 섹션이 포함된 기능 요청 템플릿
  - 질문/지원 템플릿
  - 연락처 링크가 포함된 구성 파일
- **기여 가이드라인**
  - 다음을 포함한 포괄적인 `docs/CONTRIBUTING.md`:
    - 개발 설정 지침
    - CSS 및 셸 스크립트를 위한 코드 스타일 가이드라인
    - 커밋 메시지 규칙
    - 풀 리퀘스트 프로세스
    - 테스트 절차
    - 커뮤니티 가이드라인
- **향상된 문서**
  - 포괄적인 문서 랜딩 페이지로 `docs/HOME.md` 추가
  - 쉬운 탐색을 위해 `docs/README.md` 단순화
  - 일관된 서식과 상호 참조로 모든 문서 파일 업데이트
- **번역 지원**
  - 모든 마크다운 문서 파일에 번역 바 추가
  - 9개 언어 지원: 영어, 일본어, 스페인어, 프랑스어, 독일어, 중국어, 한국어, 러시아어, 포르투갈어
- **소셜 미디어 통합**
  - Twitter/X, Reddit, Facebook, LinkedIn, Mastodon, Telegram 공유 버튼
  - 버전, 라이선스, 스타, 기여자, 이슈를 표시하는 상태 배지
- **다국어 문서**
  - 문서를 로케일 기반 폴더(en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)로 재구성
  - 9개 언어에 대한 완전한 번역
  - 모든 문서 페이지의 언어 선택 드롭다운
  - 9개 언어를 지원하도록 GitHub Actions 워크플로우 업데이트
- **갤러리 페이지**
  - 테마 미리보기와 배경화면을 보여주는 Gallery.md 생성
  - preview-1.png 및 preview-2.png 이미지 표시
  - 사용 가능한 모든 6개 배경화면 표시
  - 9개 언어로 제공
  - 수정: 모든 로케일 폴더에 실제로 Gallery.md 파일 생성
  - 수정: 미리보기 이미지 할당 수정(preview-2.png = 데스크톱, preview-1.png = 애플리케이션)
  - 수정: 배경화면 설명 수정(미니멀, 단색, 에치 테마)
- **GitHub Discussions**
  - 포괄적인 토론 카테고리 생성: 일반, 쇼케이스, Q&A, 아이디어, 개발, 공지
  - 각 카테고리에 대한 토론 템플릿 추가
  - 사용 지침이 포함된 DISCUSSION_GUIDE.md 생성
  - 모범 사례 및 커뮤니티 가이드라인 정의
  - 템플릿 관리를 위해 별도의 `discussions` 브랜치로 이동
  - 템플릿에서 게시물을 생성하는 setup-discussions.yml 워크플로우 생성

### 변경

- **문서 구조**: 플랫 파일 구조에서 로케일 기반 폴더로 이동
- **미리보기 이미지**: SVG 미리보기 이미지 제거, PNG 미리보기만 유지
- **Wiki 워크플로우**: 9개 언어의 로케일 기반 문서 구조 처리하도록 업데이트
- **스크립트 구성**: `apply-theme.sh`를 `apply.sh`로 이름 변경하고 `scripts/` 디렉토리로 이동
  - 문서 및 코드의 모든 참조 업데이트
  - 모든 스크립트를 `scripts/` 디렉토리에 통합

### 변경

- **문서 재구성**:
  - `docs/README.md`가 이제 간단한 탐색 인덱스 역할
  - `docs/HOME.md`가 포괄적인 문서 개요 제공
  - 일관성을 위해 모든 내부 문서 링크 업데이트
- **README 개선**:
  - 언어 번역 바 추가
  - 소셜 미디어 공유 버튼 추가
  - GitHub 상태 배지 추가
  - 가이드라인 링크로 기여 섹션 강화
- **탐색 업데이트**:
  - 모든 문서 탐색에 기여 가이드 추가
  - 일관성을 위해 모든 문서의 푸터 링크 업데이트

### 수정

- 모든 마크다운 파일의 문서 링크 일관성
- 설치 가이드 서식 및 명확성 개선
- 문서 파일 간의 상호 참조 링크

## [1.0.0] - 2026-05-03

### 추가

- Hentai-Senpai Theme의 **초기 릴리스**
- 완전한 GTK 테마 지원:
  - 완전한 위젯 스타일링과 에셋이 포함된 GTK 2.0
  - 포괄적인 CSS 테마의 GTK 3.0
  - 모던 CSS와 사용자 정의 속성의 GTK 4.0
- **GNOME Shell 40+** 완전 테마 포함:
  - 투명도 지원이 있는 패널 스타일링
  - 개요 및 앱 그리드 테마
  - 알림 및 캘린더 스타일링
  - 시스템 메뉴 및 팝오버
  - 창 미리보기 및 Alt+Tab
- **Cinnamon** 데스크톱 환경 지원(패널 및 메뉴 테마 포함)
- **XFWM4** 창 관리자 테마
- **Metacity** 창 장식 지원
- **Nord 색상 팔레트** 통합:
  - **Polar Night** 배경색(`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - **Snow Storm** 텍스트 색상(`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - **Frost** 강조색(`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - **Aurora** 의미 색상(`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- **Material Design** 원칙:
  - 버튼, 카드, 입력란을 위한 12px 둥근 모서리
  - 팝오버를 위한 20px 테두리 반경
  - 원형 체크박스 및 라디오 버튼(9999px 반경)
  - 입체감 그림자 및 깊이 효과
  - 인터랙티브 요소의 리플 효과
- 포괄적인 옵션이 포함된 **설치 스크립트**(`install.sh`):
  - 설치 및 제거 기능
  - 업데이트/재설치 기능
  - 사용자 정의 대상 및 이름 옵션
  - GTK4 애플리케이션을 위한 Libadwaita 수정
  - 샌드박스 앱을 위한 Flatpak 테마 수정
  - 독 테마 스타일링(투명 및 솔리드 변형)
  - 배경화면 설치
  - 자동 설치가 포함된 종속성 확인
  - 시스템 정보 및 호환성 표시
- 자동 테마 활성화를 위한 **테마 적용 스크립트**(`scripts/apply.sh`)
- 적절한 Nord 색상 통합이 포함된 **투명 Plank 독 테마**
- **포괄적인 문서**:
  - 상세한 옵션이 포함된 설치 가이드
  - 일반적인 문제에 대한 문제 해결 가이드
  - 사용 예제가 포함된 색상 팔레트 참조
  - 테마를 개인화하기 위한 사용자 정의 가이드
- Nord에서 영감을 받은 디자인의 **배경화면 컬렉션**

### 테마 구성요소

| 구성요소 | 설명 |
|-----------|-------------|
| **GTK 2.0** | 이미지 에셋이 포함된 완전한 위젯 스타일링 |
| **GTK 3.0** | 모든 위젯이 포함된 완전한 CSS 테마 |
| **GTK 4.0** | 사용자 정의 속성 및 변수가 포함된 모던 CSS |
| **GNOME Shell** | 모든 UI 요소가 포함된 완전한 셸 테마 |
| **Cinnamon** | 데스크톱 및 패널 테마 |
| **XFWM4** | XFCE용 창 장식 |
| **Metacity** | MATE 및 기타를 위한 창 장식 |
| **Plank** | 투명 독 테마 |

### 지원되는 데스크톱 환경

- GNOME 40+
- Cinnamon 4.0+
- XFCE(xfwm4 포함)
- Budgie 10.5+
- MATE 1.24+

[미출시]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
