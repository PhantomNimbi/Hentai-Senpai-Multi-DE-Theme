<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 언어</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇰🇷 한국어</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Hentai-Senpai 테마

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

우아한 [Nord](https://www.nordtheme.com/) 색상 팔레트를 사용한 [Orchis](https://github.com/vinceliuice/Orchis-theme) 기반의 아름다운 다크 GTK 테마입니다.

![테마 미리보기](../../wallpapers/001.png)

## 기능

- **어둡고 우아함** — 편안한 대비의 짙은 청회색 배경
- **Nord 색상** — 선명함을 위해 설계된 북극에서 영감을 받은 색상 구성
- **머티리얼 디자인** — 둥근 모서리, 부드러운 그림자, 리플 효과
- **다중 DE 지원** — GNOME, Cinnamon, XFCE, Budgie 및 MATE
- **완전한 테마** — GTK 2/3/4, GNOME Shell, 창 장식, 배경화면
- **현대적 GTK4** — libadwaita 기반 애플리케이션 완전 지원
- **Flatpak 준비** — 샌드박스 애플리케이션용 테마 지원

## 빠른 시작

```bash
# 모든 권장 수정 사항을 적용하여 설치
./install.sh --update -l -f --dock

# 테마 적용
./scripts/apply.sh
```

## 요구사항

- GTK 3.20+ 또는 GTK 4.0+
- GNOME Shell 40+ (GNOME 사용자용)
- Bash 4.0+

## 설치

```bash
# 기본 설치
./install.sh

# 완전한 설치 (권장) — GTK4, Flatpak 및 dock 수정 포함
./install.sh --update -l -f --dock
```

### 설치 옵션

| 옵션 | 짧은 | 설명 |
|--------|-------|-------------|
| `--update` | | 테마 업데이트/재설치 |
| `--uninstall` | `-u` | 테마 제거 |
| `--libadwaita` | `-l` | GTK4/libadwaita 앱 수정 |
| `--flatpak` | `-f` | Flatpak 앱 수정 |
| `--dock [TYPE]` | | Dock 테마 (transparent\|solid) |
| `--wallpapers` | `-w` | 배경화면 설치 |

## 문서

📚 **[전체 문서 Wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — 포괄적인 가이드 및 문제 해결

- **[설치 가이드](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — 자세한 설정 지침
- **[문제 해결](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — 일반적인 문제 및 해결책
- **[색상 팔레트](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Nord 색상 참조
- **[사용자 정의](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — 테마 개인화
- **[기여](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — 기여 방법

## 빠른 수정

**GTK4 앱에 테마가 적용되지 않나요?** `./install.sh -l` 실행 후 로그아웃/로그인

**Flatpak 앱에 테마가 적용되지 않나요?** `./install.sh -f` 실행 후 Flatpak 앱 재시작

**Dock에 스타일이 적용되지 않나요?** `./install.sh --dock transparent` 또는 `--dock solid`

## 기여

기여를 환영합니다! 지침은 [기여 가이드](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)를 참조하세요.

- 🐛 [버그 신고](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [기능 제안](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 문서 개선

## 크레딧

- vinceliuice의 [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) 기반
- Arctic Ice Studio의 [Nord Theme](https://www.nordtheme.com/) 색상 팔레트

## 라이선스

GPL-3.0 라이선스 — 자세한 내용은 [COPYING](../../src/COPYING) 파일 참조

---

**새로운 테마를 즐기세요!** 🎨

도움이 필요하면 [문서 wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)를 확인하세요.
