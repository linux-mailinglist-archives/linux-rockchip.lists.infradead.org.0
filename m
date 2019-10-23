Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A932E2385
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dUI0JHtRox/zm5hjqJQvDjKrFRbi3v3LBOn9f14QFc=; b=TXj6sFEZVbpA2i
	eQqt9kmlhaI9hcMC+PTK+67i8RsmgBxGv9pZdzvNnn4UfUhNrzyrEEF7IVgKvCvhDNpV6JNtlNjA0
	8qcXMXkuqxMSB1Bp+fsFEFn4lV9rsoGFhuJV3fof3crNGYFn1XJAib2216BGiFDDYGLLBS8QGqI09
	uSXl0O6tsWSkMDjtGqJL1RidmOS0MCSsKO2aKAG7yrAC8Pw8unTrK4Wi5Yz+8jzoopaAVZvZOthU4
	Iek20ZXdNTuZm6q1CLV0QgVN3vIYgDNis8k83y81j0FspjL/Y67ugxMHUN4Fczd0Viu5U+iMMkT8A
	qAd7DIMJEDCjPOT7uqoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMlB-0005GI-5Z; Wed, 23 Oct 2019 19:57:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMl7-0005EY-UO
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so12744994pga.8
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xYatTQidUvcBY8oQodNSYrAF9VaBOnitFhHzBSyX2+E=;
 b=CiLzTeAvuCtN4rraHHAB7tkS6+AiRnCc1XWIPhkSON2OC2XnrqIie56fqr/cUyMn6l
 aYlBBvwUO+Ijh+kXyD4udZvV1na9pBGwicKp+UApDrHzwcEDduyhWCUg23PO0ySDIonl
 J9ao56etReO7afDLH55vCoP/gci4z1SV2siyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xYatTQidUvcBY8oQodNSYrAF9VaBOnitFhHzBSyX2+E=;
 b=tcDTFWTgYSJmLRARKgSBNT0k58ST0s0ZXykdKR53L6EuJZLAVya6bGfkHU5bcFztqJ
 SlMUV7MyFIplXnuarkzMMSbigSyKSrFrWlFzNTlAvZgJOaRWIaqSXJZLCQJNsnLgz2Gr
 zP+1x4E1/CMlcM92UM6N/4cWbAPynFtDTn4aREDai7ghyhBhmYF/wRA6+LeL+WzO6NV8
 b93FSYM/mm5EIo33nlQCIve/os5vBh0h1GmJINpgNmrcg93lRYPw7xcqbAR0P6eEyvze
 DtqpxgF+HwW11VLTyWGKSjz7EdZnQFTxV+OABG7/SxwjGW1jo2nO4v2LXS+IZv2dMa0C
 WwKA==
X-Gm-Message-State: APjAAAWiTO++A7q2ft0Orb3Mh+vifrKRfSgSdxjwm3Eru/x0+ubZGT6s
 U06Muo5jL6ZCa0FnAMRbMWgq4A==
X-Google-Smtp-Source: APXvYqxzWXSNOjTHIDkWfeIqPzQft3ota+0ByA0PhARgHlkAdD8AYx950MdxUjjC4+Qh+oWQryTNZg==
X-Received: by 2002:a63:540c:: with SMTP id i12mr9273758pgb.322.1571860648304; 
 Wed, 23 Oct 2019 12:57:28 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 6/7] rockchip: Add Single boot image (with binman, pad_cat)
Date: Thu, 24 Oct 2019 01:26:51 +0530
Message-Id: <20191023195652.7158-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125730_011973_908A63A8 
X-CRM114-Status: GOOD (  14.18  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Ci0tLQogTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMTggKysrKysrKysrKysrKystLS0tCiBhcmNoL2FybS9LY29uZmlnICAg
ICAgICAgICAgICAgICAgfCAgMSArCiBhcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpICAg
fCAgMiArKwogYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaSAgIHwgIDIgKysKIGFyY2gv
YXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysrKwog
aW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIHwgIDIgKysKIDYgZmlsZXMgY2hhbmdl
ZCwgNDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kKCmRpZmYgLS1naXQgYS9NYWtlZmlsZSBi
L01ha2VmaWxlCmluZGV4IGE0Mjc4MTcwZDQuLjZjNzAxMDZjNmUgMTAwNjQ0Ci0tLSBhL01ha2Vm
aWxlCisrKyBiL01ha2VmaWxlCkBAIC04ODcsNyArODg3LDcgQEAgQUxMLXkgKz0gdS1ib290LXdp
dGgtZHRiLmJpbgogZW5kaWYKIAogaWZlcSAoJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkkKENPTkZJ
R19TUEwpLHl5KQotQUxMLXkgKz0gdS1ib290LXNwbC1yb2NrY2hpcC5iaW4KK0FMTC15ICs9IHUt
Ym9vdC1yb2NrY2hpcC5iaW4KIGVuZGlmCiAKIExERkxBR1NfdS1ib290ICs9ICQoTERGTEFHU19G
SU5BTCkKQEAgLTEzNDcsMTUgKzEzNDcsMjUgQEAgaWZlcSAoJChDT05GSUdfU1BMKSQoQ09ORklH
X1RQTCkseXkpCiBNS0lNQUdFRkxBR1NfdS1ib290LXRwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENP
TkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQogdHBsL3UtYm9vdC10cGwtcm9j
a2NoaXAuYmluOiB0cGwvdS1ib290LXRwbC5iaW4gRk9SQ0UKIAkkKGNhbGwgaWZfY2hhbmdlZCxt
a2ltYWdlKQotdS1ib290LXNwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJvb3QtdHBsLXJvY2tjaGlw
LmJpbiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKK3NwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJp
bjogdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQog
CSQoY2FsbCBpZl9jaGFuZ2VkLGNhdCkKIGVsc2UKIE1LSU1BR0VGTEFHU191LWJvb3Qtc3BsLXJv
Y2tjaGlwLmJpbiA9IC1uICQoQ09ORklHX1NZU19TT0MpIC1UICQoUk9DS0NISVBfSU1HX1RZUEUp
Ci11LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCitzcGwv
dS1ib290LXNwbC1yb2NrY2hpcC5iaW46IHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQogCSQoY2Fs
bCBpZl9jaGFuZ2VkLG1raW1hZ2UpCiBlbmRpZgogCi1lbmRpZgoraWZlcSAoJChDT05GSUdfQVJN
NjQpLCkKK3UtYm9vdC1yb2NrY2hpcC5iaW46IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiB1
LWJvb3QuaW1nIEZPUkNFCisJJChjYWxsIGlmX2NoYW5nZWQsYmlubWFuKQorZWxzZQorT0JKQ09Q
WUZMQUdTX3UtYm9vdC1yb2NrY2hpcC5iaW4gPSAtSSBiaW5hcnkgLU8gYmluYXJ5IFwKKwktLXBh
ZC10bz0kKENPTkZJR19TUExfUEFEX1RPKSAtLWdhcC1maWxsPTB4ZmYKK3UtYm9vdC1yb2NrY2hp
cC5iaW46IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiB1LWJvb3QuaXRiIEZPUkNFCisJJChj
YWxsIGlmX2NoYW5nZWQscGFkX2NhdCkKK2VuZGlmICMgQ09ORklHX0FSTTY0CisKK2VuZGlmICMg
Q09ORklHX0FSQ0hfUk9DS0NISVAKIAogaWZlcSAoJChDT05GSUdfQVJDSF9MUEMzMlhYKSQoQ09O
RklHX1NQTCkseXkpCiBNS0lNQUdFRkxBR1NfbHBjMzJ4eC1zcGwuaW1nID0gLVQgbHBjMzJ4eGlt
YWdlIC1hICQoQ09ORklHX1NQTF9URVhUX0JBU0UpCmRpZmYgLS1naXQgYS9hcmNoL2FybS9LY29u
ZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCAxZGYyYWJhM2MyLi44MTA3NDE0NjI2IDEwMDY0
NAotLS0gYS9hcmNoL2FybS9LY29uZmlnCisrKyBiL2FyY2gvYXJtL0tjb25maWcKQEAgLTE1OTQs
NiArMTU5NCw3IEBAIGNvbmZpZyBBUkNIX1NUTTMyTVAKIGNvbmZpZyBBUkNIX1JPQ0tDSElQCiAJ
Ym9vbCAiU3VwcG9ydCBSb2NrY2hpcCBTb0NzIgogCXNlbGVjdCBCTEsKKwlzZWxlY3QgQklOTUFO
IGlmICFBUk02NAogCXNlbGVjdCBETQogCXNlbGVjdCBETV9HUElPCiAJc2VsZWN0IERNX0kyQwpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0
cy9yazMwMzYtdS1ib290LmR0c2kKaW5kZXggMWU3ZDA3OTMxNS4uNDFhYzA1NGI4MSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMv
cmszMDM2LXUtYm9vdC5kdHNpCkBAIC0yLDMgKzIsNSBAQAogLyoKICAqIENvcHlyaWdodCAoQykg
MjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KICAqLworCisjaW5j
bHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmsz
Mjg4LXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQppbmRleCAz
ZjAwYTNiNmQzLi42ZDMxNzM1MzYyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMjg4LXUt
Ym9vdC5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKQEAgLTMsNiAr
Myw4IEBACiAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBM
dGQKICAqLwogCisjaW5jbHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCisKIC8gewogCWNob3Nl
biB7CiAJCXUtYm9vdCxzcGwtYm9vdC1vcmRlciA9IFwKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0
cy9yb2NrY2hpcC11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRz
aQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5iYzBiMTQxMmEyCi0tLSAv
ZGV2L251bGwKKysrIGIvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCkBAIC0wLDAg
KzEsMjEgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKworLyoKKyAqIENv
cHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4K
KyAqLworCisjaW5jbHVkZSA8Y29uZmlnLmg+CisKKy8geworCWJpbm1hbiB7CisJCWZpbGVuYW1l
ID0gInUtYm9vdC1yb2NrY2hpcC5iaW4iOworCQlwYWQtYnl0ZSA9IDwweGZmPjsKKworCQlibG9i
IHsKKwkJCWZpbGVuYW1lID0gInNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiI7CisJCX07CisK
KwkJdS1ib290LWltZyB7CisJCQlvZmZzZXQgPSA8Q09ORklHX1NQTF9QQURfVE8+OworCQl9Owor
CX07Cit9OwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIGIv
aW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCmluZGV4IDY4ZTExMDVhNGIuLmQ3ZjVj
YTlmYTQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaAorKysg
Yi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmgKQEAgLTksNiArOSw4IEBACiAKICNk
ZWZpbmUgQ09ORklHX1NZU19OUzE2NTUwX01FTTMyCiAKKyNkZWZpbmUgQ09ORklHX1NQTF9QQURf
VE8JCTgzNTU4NDAKKwogI2lmbmRlZiBDT05GSUdfU1BMX0JVSUxECiAKIC8qIEZpcnN0IHRyeSB0
byBib290IGZyb20gU0QgKGluZGV4IDApLCB0aGVuIGVNTUMgKGluZGV4IDEpICovCi0tIAoyLjE4
LjAuMzIxLmdmZmM2ZmEwZTMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
