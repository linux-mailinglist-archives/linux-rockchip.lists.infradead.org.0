Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9BB130175
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asAusme2RUvxvJofw6+CiQUhZbri5hiFd3gVpGW7KrI=; b=tJzYhi8oJ+AH+S
	+7qPX10Hf/cGngwnoUoULoULmVFw8aWxySoq9aAO7QGDvkaRw8zkXR3BnxWQmTJRzklvMfpT7bngi
	3L5RncfNTLpzM8rDRa6SM9CVv7oB40KP1fKlEs3bX8GY2j3BmBfoxiORB1zZfaUNS7oRwAAtVYHfU
	wiU4EVjXZn5cXT5FTFBODKKtag5cC1EqikvcQrdNlfOdD0feA1d0pzwlMHnEGEJSEyTWiyCiXRzVG
	VMJIS3MoYUesN/jOWp6s58dmA7A0sCEp7VT5UWZ+k12oKNMKsYVJwHQq1iLkFZRjOhMiePFE5KCHk
	sg4qbAMctBqimTz8feyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inexG-0003Je-TN; Sat, 04 Jan 2020 08:38:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inexD-0003Gl-7e
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id b9so24456107pgk.12
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ehwuJZnRKKx5EZ4MhrVjA+CzbfF6qtPzoe+uGVxNIwE=;
 b=ANS5+bvk/K/TTlFzy4lYM3OpXfKAQPZwfqx2vlf4COOJUXdAGE/TYdvNlCqa38KGRJ
 dXqXRCAjFm+NcSrh1ThTG2/NrWxE+2YqyT94HYIbqJTplzRYc6n9ehBspcpPvlQowJSo
 8vJgQTrHgz1DNV7vDpi68k3CpbQNBOSaAUAao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ehwuJZnRKKx5EZ4MhrVjA+CzbfF6qtPzoe+uGVxNIwE=;
 b=BYtH1j7Y/ieNqvT3Qx6zbq9wEG+iKSxFE8iC4ZzfEOH51Huu8YdHVyzykoptjlKfVn
 zbt2tD2zOVGUsjQyOCnKH9fTvwgGME97pc8HHRfyrW4jKRj7b015fLth6packkHKrVNp
 csAu1URijFReFnUnHHGRcZoIyh0vx81dZb42mati7h0/BRU9SO4Nr8wPxS+KBaIjeJtm
 XsJ8sbw5WBywhC7p5GPEwAJlHnilW9Cim0pyu1sQJekIqlLPSq+urgfValYTl7Lq8hGe
 4G5fRj9qgn2XaD+HARFtlUzF94zR7aHlPmNqDg7lQD7aUWMrdkBHT1CMq5396ziyQFKB
 9a1Q==
X-Gm-Message-State: APjAAAUpCsnbZMdpM3wpPwwzCSMPiVVzcKLbuRueoLLSRNSBuo4JCgge
 V1AddXfKq3CANDpsX2NGwqwm2anFgmI=
X-Google-Smtp-Source: APXvYqwj+S4ETzhwogUdDVkSLbEcNa0HG6yhIJemSwhIEUCFULHXzXUwSY6XHRxH552MWrfblrruXg==
X-Received: by 2002:a63:1a1c:: with SMTP id
 a28mr104679008pga.374.1578127118072; 
 Sat, 04 Jan 2020 00:38:38 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:37 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 5/6] rockchip: Add Single boot image (with binman, pad_cat)
Date: Sat,  4 Jan 2020 14:08:05 +0530
Message-Id: <20200104083806.3930-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003839_293754_BBC8F0DF 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QWxsIHJvY2tjaGlwIHBsYXRmb3JtcyBzdXBwb3J0IFRQTCBvciBTUEwtYmFzZWQgYm9vdGxvYWRl
cgppbiBtYWlubGluZSB3aXRoIFUtQm9vdCBwcm9wZXIgYXMgZmluYWwgc3RhZ2UuIEZvciBlYWNo
CnN0YWdlIHdlIG5lZWQgdG8gYnVybiB0aGUgaW1hZ2Ugb24gdG8gZmxhc2ggd2l0aCByZXNwZWN0
aXZlCm9mZnNldHMuCgpUaGlzIHBhdGNoIGNyZWF0ZXMgYSBzaW5nbGUgYm9vdCBpbWFnZSBjb21w
b25lbnQgdXNpbmcKLSBiaW5tYW4sIGZvciBhcm0zMiByb2NrY2hpcCBwbGF0Zm9ybXMKLSBwYWRf
Y2F0LCBmb3IgYXJtNjQgcm9ja2NoaXAgcGxhdGZvcm1zLgoKVGhpcyB3b3VsZCBoZWxwIHVzZXJz
IHRvIGdldCByaWQgb2YgYnVybmluZyBkaWZmZXJlbnQKYm9vdCBzdGFnZSBpbWFnZXMuCgpUaGUg
bmV3IGltYWdlIGNhbGxlZCAndS1ib290LXJvY2tjaGlwLmJpbicKd2hpY2ggY2FuIGJ1cm4gaW50
byBmbGFzaCBsaWtlOgoK4oK5IHN1ZG8gZGQgaWY9dS1ib290LXJvY2tjaGlwLmJpbiBvZj0vZGV2
L3NkYSBzZWVrPTY0CgpUaGlzIHdvdWxkIHN1cHBvcnQgYWxsIHJvY2tjaGlwIHBsYXRmb3Jtcywg
ZXhjZXB0IHJrMzEyOApzaW5jZSBpdCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQTCB5ZXQuCgpDYzog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KQ2M6IE1hdHdleSBWLiBLb3Ju
aWxvdiA8bWF0d2V5Lmtvcm5pbG92QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgotLS0KIE1ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IDE0ICsrKysrKysrKysrKy0tCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAg
ICAgICAgfCAgMSArCiBhcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpICAgfCAgMiArKwog
YXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaSAgIHwgIDIgKysKIGFyY2gvYXJtL2R0cy9y
b2NrY2hpcC11LWJvb3QuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9j
b25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIHwgIDMgKysrCiA2IGZpbGVzIGNoYW5nZWQsIDQxIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0v
ZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmls
ZQppbmRleCBkOGEwZjY4ODgzLi5jZGQzZWI0NjE0IDEwMDY0NAotLS0gYS9NYWtlZmlsZQorKysg
Yi9NYWtlZmlsZQpAQCAtOTA5LDcgKzkwOSw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0Yi5i
aW4KIGVuZGlmCiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApJChDT05GSUdfU1BMKSx5
eSkKLUFMTC15ICs9IGlkYmxvYWRlci5pbWcKK0FMTC15ICs9IHUtYm9vdC1yb2NrY2hpcC5iaW4K
IGVuZGlmCiAKIExERkxBR1NfdS1ib290ICs9ICQoTERGTEFHU19GSU5BTCkKQEAgLTEzOTUsNyAr
MTM5NSwxNyBAQCBpZGJsb2FkZXIuaW1nOiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKIAkkKGNh
bGwgaWZfY2hhbmdlZCxta2ltYWdlKQogZW5kaWYKIAotZW5kaWYKK2lmZXEgKCQoQ09ORklHX0FS
TTY0KSwpCit1LWJvb3Qtcm9ja2NoaXAuYmluOiBpZGJsb2FkZXIuaW1nIHUtYm9vdC5pbWcgRk9S
Q0UKKwkkKGNhbGwgaWZfY2hhbmdlZCxiaW5tYW4pCitlbHNlCitPQkpDT1BZRkxBR1NfdS1ib290
LXJvY2tjaGlwLmJpbiA9IC1JIGJpbmFyeSAtTyBiaW5hcnkgXAorCS0tcGFkLXRvPSQoQ09ORklH
X1NQTF9QQURfVE8pIC0tZ2FwLWZpbGw9MHhmZgordS1ib290LXJvY2tjaGlwLmJpbjogaWRibG9h
ZGVyLmltZyB1LWJvb3QuaXRiIEZPUkNFCisJJChjYWxsIGlmX2NoYW5nZWQscGFkX2NhdCkKK2Vu
ZGlmICMgQ09ORklHX0FSTTY0CisKK2VuZGlmICMgQ09ORklHX0FSQ0hfUk9DS0NISVAKIAogaWZl
cSAoJChDT05GSUdfQVJDSF9MUEMzMlhYKSQoQ09ORklHX1NQTCkseXkpCiBNS0lNQUdFRkxBR1Nf
bHBjMzJ4eC1zcGwuaW1nID0gLVQgbHBjMzJ4eGltYWdlIC1hICQoQ09ORklHX1NQTF9URVhUX0JB
U0UpCmRpZmYgLS1naXQgYS9hcmNoL2FybS9LY29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRl
eCBmOWRhYjA3M2VhLi43YmQ5OWJhM2JiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9LY29uZmlnCisr
KyBiL2FyY2gvYXJtL0tjb25maWcKQEAgLTE1OTAsNiArMTU5MCw3IEBAIGNvbmZpZyBBUkNIX1NU
TTMyTVAKIGNvbmZpZyBBUkNIX1JPQ0tDSElQCiAJYm9vbCAiU3VwcG9ydCBSb2NrY2hpcCBTb0Nz
IgogCXNlbGVjdCBCTEsKKwlzZWxlY3QgQklOTUFOIGlmICFBUk02NAogCXNlbGVjdCBETQogCXNl
bGVjdCBETV9HUElPCiAJc2VsZWN0IERNX0kyQwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3Jr
MzAzNi11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kKaW5kZXgg
MWU3ZDA3OTMxNS4uNDFhYzA1NGI4MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11
LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpCkBAIC0yLDMg
KzIsNSBAQAogLyoKICAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KICAqLworCisjaW5jbHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2ki
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0v
ZHRzL3JrMzI4OC11LWJvb3QuZHRzaQppbmRleCAzZjAwYTNiNmQzLi42ZDMxNzM1MzYyIDEwMDY0
NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpCisrKyBiL2FyY2gvYXJtL2R0
cy9yazMyODgtdS1ib290LmR0c2kKQEAgLTMsNiArMyw4IEBACiAgKiBDb3B5cmlnaHQgKEMpIDIw
MTkgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQKICAqLwogCisjaW5jbHVkZSAicm9ja2No
aXAtdS1ib290LmR0c2kiCisKIC8gewogCWNob3NlbiB7CiAJCXUtYm9vdCxzcGwtYm9vdC1vcmRl
ciA9IFwKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaSBiL2Fy
Y2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwLi5hMjU1OWUyZGIwCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0vZHRz
L3JvY2tjaGlwLXUtYm9vdC5kdHNpCkBAIC0wLDAgKzEsMjEgQEAKKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wKworLyoKKyAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtp
IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KKyAqLworCisjaW5jbHVkZSA8Y29uZmlnLmg+
CisKKy8geworCWJpbm1hbiB7CisJCWZpbGVuYW1lID0gInUtYm9vdC1yb2NrY2hpcC5iaW4iOwor
CQlwYWQtYnl0ZSA9IDwweGZmPjsKKworCQlibG9iIHsKKwkJCWZpbGVuYW1lID0gImlkYmxvYWRl
ci5pbWciOworCQl9OworCisJCXUtYm9vdC1pbWcgeworCQkJb2Zmc2V0ID0gPENPTkZJR19TUExf
UEFEX1RPPjsKKwkJfTsKKwl9OworfTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yb2Nr
Y2hpcC1jb21tb24uaCBiL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaAppbmRleCA2
OGUxMTA1YTRiLi5iNTVlMDlhOWNhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2No
aXAtY29tbW9uLmgKKysrIGIvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCkBAIC05
LDYgKzksOSBAQAogCiAjZGVmaW5lIENPTkZJR19TWVNfTlMxNjU1MF9NRU0zMgogCisvKiAoKENP
TkZJR19TWVNfTU1DU0RfUkFXX01PREVfVV9CT09UX1NFQ1RPUiAtIDY0KSAqIDUxMikgKi8KKyNk
ZWZpbmUgQ09ORklHX1NQTF9QQURfVE8JCTgzNTU4NDAKKwogI2lmbmRlZiBDT05GSUdfU1BMX0JV
SUxECiAKIC8qIEZpcnN0IHRyeSB0byBib290IGZyb20gU0QgKGluZGV4IDApLCB0aGVuIGVNTUMg
KGluZGV4IDEpICovCi0tIAoyLjE4LjAuMzIxLmdmZmM2ZmEwZTMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
