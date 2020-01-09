Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426FC136071
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MUklYgWa6ovhIk5MVAUJjUK2kDX+rE4nWA1kG6tUXw=; b=AoVb1PknFFXMUE
	zkdMIcVOdpTAMo9JBfxDRNXSWtKZJgJ4D7qPF6/44ti2fWcfjRnez10gM6/AJM1bBLGBMooR5LWkJ
	EMorkHGtORlFRdo+lVdQ0vmPbHKjrk0EtUBg5kGJSO0fFkKbPtBjbWztuOJ0qBoc16VoObEU89/HI
	BqBx7prK3/7Je6j/MKlsHX8UIIKj86ajQdwP4V40moMHZui+7QA3Yf1F3D4P+4V79jlrqjwg9slK5
	2TBaH9hKm31RdMkZOgtmw1XSUXZgT9gAimj+aMEQqzUDx97vyZ0XL8jmOpD2kkkzOZm1Xqg4Q6KA4
	b8PYF+roevoJQTeA1h2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcrO-0003JD-BK; Thu, 09 Jan 2020 18:48:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcrK-0003Ii-Q7
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:48:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so1510083pjb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lJIMf+9YZW+X6GdFWHZpRH4+lugUPac38t0E8telXj0=;
 b=dOaqQCRgCyyMkKq7oLsjHHiFZCMitz/EPJ3lnSXlvMD5Jfqo17spbAXIbyRo/10DAx
 dJlBlpt6vO63/vwU1LeAy9yd283EoeT8kV3qrjbPggCGpscTyQR9p1dCVoZ/ogLl2Kav
 Uol/gsdZ73+KZYQDLsGZF97iMrGO0XBv3Qefc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lJIMf+9YZW+X6GdFWHZpRH4+lugUPac38t0E8telXj0=;
 b=lMg1KpIUqApkr94Tw1D1k+WOzbmajCcEdcx1zJ4xCT+00NTz/nWteQN6VUOmQdUG5h
 3OXmW4OyllA1LIdaGXHOkIHGJCYyNM0L57NaeHgfNpLe7roYc8646PvdQPQcWQ2qunEO
 QR02fHXOgk/0ASKxBqjbMmXhPv/HagLXm8YCo2De46bZfk+o9UsTy4eym4/hWXcjiy51
 jYFZ4HIg7gy5FxKu/Z2FCdZQfl6Ag3uIf7eDsD2JRMW7wMRzbZWPP7LQGX6EwX0NuQ/y
 PnVewCEYAoyLb0aIUSu5lvSTfLtOPjzwK0cmh3pSGfX+8ECrcHErPRtxEJKjea6IdX9J
 VS4A==
X-Gm-Message-State: APjAAAVCEigAFntou/zBVeQ48eHonN0dP92Ec5qcWKInmjTIIfD8Zz7m
 U4pIDFTf4RAxSdw/tKAESSoGVw==
X-Google-Smtp-Source: APXvYqzt0kWtQqZ2QN1STaAsjev3pJYcMv7YcL6bzeqQHm9yf8VAun4Ih/TIiZ5qKuFj1YKNqTLBSg==
X-Received: by 2002:a17:90a:200d:: with SMTP id
 n13mr7269727pjc.16.1578595722296; 
 Thu, 09 Jan 2020 10:48:42 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:48:41 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 6/7] rockchip: Add Single boot image (with binman, pad_cat)
Date: Fri, 10 Jan 2020 00:16:21 +0530
Message-Id: <20200109184622.3098-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104842_851129_44B38F51 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>, Wadim Egorov <w.egorov@phytec.de>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
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
TWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgpDYzogV2FkaW0g
RWdvcm92IDx3LmVnb3JvdkBwaHl0ZWMuZGU+ClNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGph
Z2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCiBNYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxNCArKysrKysrKysrKystLQogYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAgICAgICAg
IHwgIDEgKwogYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSAgIHwgIDIgKysKIGFyY2gv
YXJtL2R0cy9yazMxODgtdS1ib290LmR0c2kgICB8ICAyICsrCiBhcmNoL2FybS9kdHMvcmszMjg4
LXUtYm9vdC5kdHNpICAgfCAgMiArKwogYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNp
IHwgMjEgKysrKysrKysrKysrKysrKysrKysrCiBjb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNv
bmZpZyAgfCAgMiAtLQogaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIHwgIDMgKysr
CiA4IGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpkaWZmIC0t
Z2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQppbmRleCA1MzYxNTI0Zjc3Li4xZDcxYTc3Y2JiIDEw
MDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAtOTA5LDcgKzkwOSw3IEBAIEFM
TC15ICs9IHUtYm9vdC13aXRoLWR0Yi5iaW4KIGVuZGlmCiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApJChDT05GSUdfU1BMKSx5eSkKLUFMTC15ICs9IGlkYmxvYWRlci5pbWcKK0FMTC15
ICs9IHUtYm9vdC1yb2NrY2hpcC5iaW4KIGVuZGlmCiAKIExERkxBR1NfdS1ib290ICs9ICQoTERG
TEFHU19GSU5BTCkKQEAgLTEzOTUsNyArMTM5NSwxNyBAQCBpZGJsb2FkZXIuaW1nOiBzcGwvdS1i
b290LXNwbC5iaW4gRk9SQ0UKIAkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQogZW5kaWYKIAot
ZW5kaWYKK2lmZXEgKCQoQ09ORklHX0FSTTY0KSwpCit1LWJvb3Qtcm9ja2NoaXAuYmluOiBpZGJs
b2FkZXIuaW1nIHUtYm9vdC5pbWcgRk9SQ0UKKwkkKGNhbGwgaWZfY2hhbmdlZCxiaW5tYW4pCitl
bHNlCitPQkpDT1BZRkxBR1NfdS1ib290LXJvY2tjaGlwLmJpbiA9IC1JIGJpbmFyeSAtTyBiaW5h
cnkgXAorCS0tcGFkLXRvPSQoQ09ORklHX1NQTF9QQURfVE8pIC0tZ2FwLWZpbGw9MHhmZgordS1i
b290LXJvY2tjaGlwLmJpbjogaWRibG9hZGVyLmltZyB1LWJvb3QuaXRiIEZPUkNFCisJJChjYWxs
IGlmX2NoYW5nZWQscGFkX2NhdCkKK2VuZGlmICMgQ09ORklHX0FSTTY0CisKK2VuZGlmICMgQ09O
RklHX0FSQ0hfUk9DS0NISVAKIAogaWZlcSAoJChDT05GSUdfQVJDSF9MUEMzMlhYKSQoQ09ORklH
X1NQTCkseXkpCiBNS0lNQUdFRkxBR1NfbHBjMzJ4eC1zcGwuaW1nID0gLVQgbHBjMzJ4eGltYWdl
IC1hICQoQ09ORklHX1NQTF9URVhUX0JBU0UpCmRpZmYgLS1naXQgYS9hcmNoL2FybS9LY29uZmln
IGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCBmOWRhYjA3M2VhLi43YmQ5OWJhM2JiIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9LY29uZmlnCisrKyBiL2FyY2gvYXJtL0tjb25maWcKQEAgLTE1OTAsNiAr
MTU5MCw3IEBAIGNvbmZpZyBBUkNIX1NUTTMyTVAKIGNvbmZpZyBBUkNIX1JPQ0tDSElQCiAJYm9v
bCAiU3VwcG9ydCBSb2NrY2hpcCBTb0NzIgogCXNlbGVjdCBCTEsKKwlzZWxlY3QgQklOTUFOIGlm
ICFBUk02NAogCXNlbGVjdCBETQogCXNlbGVjdCBETV9HUElPCiAJc2VsZWN0IERNX0kyQwpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9y
azMwMzYtdS1ib290LmR0c2kKaW5kZXggMWU3ZDA3OTMxNS4uNDFhYzA1NGI4MSAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmsz
MDM2LXUtYm9vdC5kdHNpCkBAIC0yLDMgKzIsNSBAQAogLyoKICAqIENvcHlyaWdodCAoQykgMjAx
OSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KICAqLworCisjaW5jbHVk
ZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMTg4
LXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3JrMzE4OC11LWJvb3QuZHRzaQppbmRleCAxZTdk
MDc5MzE1Li40MWFjMDU0YjgxIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMTg4LXUtYm9v
dC5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9yazMxODgtdS1ib290LmR0c2kKQEAgLTIsMyArMiw1
IEBACiAvKgogICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFz
b2x1dGlvbnMuY29tPgogICovCisKKyNpbmNsdWRlICJyb2NrY2hpcC11LWJvb3QuZHRzaSIKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMv
cmszMjg4LXUtYm9vdC5kdHNpCmluZGV4IDNmMDBhM2I2ZDMuLjZkMzE3MzUzNjIgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3Jr
MzI4OC11LWJvb3QuZHRzaQpAQCAtMyw2ICszLDggQEAKICAqIENvcHlyaWdodCAoQykgMjAxOSBS
b2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZAogICovCiAKKyNpbmNsdWRlICJyb2NrY2hpcC11
LWJvb3QuZHRzaSIKKwogLyB7CiAJY2hvc2VuIHsKIAkJdS1ib290LHNwbC1ib290LW9yZGVyID0g
XApkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpIGIvYXJjaC9h
cm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAuLmEyNTU5ZTJkYjAKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9kdHMvcm9j
a2NoaXAtdS1ib290LmR0c2kKQEAgLTAsMCArMSwyMSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjArCisvKgorICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2FuIFRla2kgPGph
Z2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgorICovCisKKyNpbmNsdWRlIDxjb25maWcuaD4KKwor
LyB7CisJYmlubWFuIHsKKwkJZmlsZW5hbWUgPSAidS1ib290LXJvY2tjaGlwLmJpbiI7CisJCXBh
ZC1ieXRlID0gPDB4ZmY+OworCisJCWJsb2IgeworCQkJZmlsZW5hbWUgPSAiaWRibG9hZGVyLmlt
ZyI7CisJCX07CisKKwkJdS1ib290LWltZyB7CisJCQlvZmZzZXQgPSA8Q09ORklHX1NQTF9QQURf
VE8+OworCQl9OworCX07Cit9OwpkaWZmIC0tZ2l0IGEvY29uZmlncy9waHljb3JlLXJrMzI4OF9k
ZWZjb25maWcgYi9jb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNvbmZpZwppbmRleCAyZjEwYzdh
M2IzLi5lZTE2NGE5MDgzIDEwMDY0NAotLS0gYS9jb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNv
bmZpZworKysgYi9jb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNvbmZpZwpAQCAtMTksOCArMTks
NiBAQCBDT05GSUdfREVGQVVMVF9GRFRfRklMRT0icmszMjg4LXBoeWNvcmUtcmRrLmR0YiIKIENP
TkZJR19ESVNQTEFZX0JPQVJESU5GT19MQVRFPXkKIENPTkZJR19TUExfU1RBQ0tfUj15CiBDT05G
SUdfU1BMX1NUQUNLX1JfTUFMTE9DX1NJTVBMRV9MRU49MHgyMDAwCi1DT05GSUdfU1BMX0kyQ19T
VVBQT1JUPXkKLUNPTkZJR19TUExfUE9XRVJfU1VQUE9SVD15CiBDT05GSUdfQ01EX0dQSU89eQog
Q09ORklHX0NNRF9HUFQ9eQogQ09ORklHX0NNRF9JMkM9eQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9j
b25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1v
bi5oCmluZGV4IDY4ZTExMDVhNGIuLmI1NWUwOWE5Y2EgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvY29u
Zmlncy9yb2NrY2hpcC1jb21tb24uaAorKysgYi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29t
bW9uLmgKQEAgLTksNiArOSw5IEBACiAKICNkZWZpbmUgQ09ORklHX1NZU19OUzE2NTUwX01FTTMy
CiAKKy8qICgoQ09ORklHX1NZU19NTUNTRF9SQVdfTU9ERV9VX0JPT1RfU0VDVE9SIC0gNjQpICog
NTEyKSAqLworI2RlZmluZSBDT05GSUdfU1BMX1BBRF9UTwkJODM1NTg0MAorCiAjaWZuZGVmIENP
TkZJR19TUExfQlVJTEQKIAogLyogRmlyc3QgdHJ5IHRvIGJvb3QgZnJvbSBTRCAoaW5kZXggMCks
IHRoZW4gZU1NQyAoaW5kZXggMSkgKi8KLS0gCjIuMTguMC4zMjEuZ2ZmYzZmYTBlMwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
