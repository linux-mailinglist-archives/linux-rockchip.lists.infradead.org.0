Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79598B5C1
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZWQbid0Z6x17r8ZGrCou8QkqiTFzfpVspHlMe5tQmo=; b=r7hvArRmnuEYtF
	QpkOiMAtYdZ1rJCj1qGfrW6So23LUz1TGyscVjatFuj9+m6U2ToLQXVGwyI76xdOuFNdR7dlQby/2
	QLGBh9JibTul94gjQ/zOHPLuTbIdisIXRtcdcR3GUb+h6rRiotLIv7OzZLt3PMDD4gvX40lt0XaXQ
	6YYOgk4Kyh45YnTyrTqXUml4IyRvZCEiWdbjGHmms32hxXUF2uvbemYIgktB9i2qPPZCmg7HZ8gfo
	nzQ6TwPVkRLifqvVVdlBq6WCt5nPi8+S9Lz5minbqPSbs8Jahs/SqzwM8NRr9xbPrG91JVqMGbgDp
	yULndGSaGbHLJKxgoUvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfox-00016D-E0; Sun, 28 Apr 2019 09:10:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfot-00013a-AP
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:10:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id f6so3700424pgs.8
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gmv72XAUwvL32XO90b4eb/ahZYMWppaAG+neC+SSpjE=;
 b=jUtUte4rlz/WZN8jisim3Zn01PqDp4IYfr+gAwnaFXIaVHW906ybuibH8JvqpgWeNz
 J+zajtMiT7vlaHVetFGhPjHAdXf+1h0zzrC5f2O6y4cBsmMviGAblENWnnuR7Gb8AzZI
 2I4g1BbUO8RvxrYYs++aa7sRjbC312+Kf7XDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gmv72XAUwvL32XO90b4eb/ahZYMWppaAG+neC+SSpjE=;
 b=JmdAHHxmv0nhJ5c9VOHvTm6joQtk8bbIcYucXFlP/8hm2VOsXzn3ZHZrqiHyo16Fb0
 qal6tOtcpJNGGVRn+TTJQCpFJJbU3XUC0x1ZVMMNi7T72+NU7iSUqfvePsQT4ba1LrW0
 1Bz5Ma4JEGifXbgdBsdTk2Kdd8Oe+ltsF2r6oQ7k1Pab6C17evjidPuNSX8vOwFNVMQI
 m7+v7jWzdRpuKlvEL8BAz6fJFJZX8KOXy5sKTEC26NAE+ej47iKAqNSU/K7vIQAo8qU4
 nwXnQZoUKOW4wlrrfAQv+UjeWpRQHsMpt268Vlt4vDqcR5jzUnZOyYt5hhUS1Y2czwCM
 eJYA==
X-Gm-Message-State: APjAAAX7ZKY7KwGUBN25vrsFf3lFiDaYHzqcclNJNuAjtuAMFmVmFug8
 P5XREgq0SSzBkPaQF6Uairun3w==
X-Google-Smtp-Source: APXvYqyTNEvLVdD2F0apo6zNhxfbt7MJmV8tr+KrTDjtjTsb4692ckzmQ1O7G/Ml/ThVtzlXSUELcg==
X-Received: by 2002:a65:480c:: with SMTP id h12mr52210940pgs.266.1556442598841; 
 Sun, 28 Apr 2019 02:09:58 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 7/9] Makefile.spl: Create u-boot-spl-rockchip.bin for rk3399
Date: Sun, 28 Apr 2019 14:39:11 +0530
Message-Id: <20190428090913.10568-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020959_357692_B515A20E 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Um9ja2NoaXAgcGxhdGZvcm0gd291bGQgcmVxdWlyZSBhbiBleHBsaWNpdCBjYWxsIHRvIG1raW1h
Z2UgZm9yCmNyZWF0aW5nIGJvb3RhYmxlIGltYWdlcyB3aGljaCBpbmRlZWQgc3BlY2lmaWMgdG8g
U29DIGZhbWlseQphbG9uZyB3aXRoIGJvb3QgZGV2aWNlcy4KCkV4YW1wbGUgb2YgY3JlYXRpbmcg
Ym9vdGFibGUgaW1hZ2UgZm9yIHJrMzM5OSBmYW1pbHkgd2l0aCBTRApib290IGRldmljZSBhcwoK
4oK5IG1raW1hZ2UgLW4gcmszMzk5IC1UIHJrc2QgLWQgLi9zcGwvdS1ib290LXNwbC1kdGIuYmlu
IHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluCgpUaGlzIHBhdGNoIHdvdWxkIGRvIHRoZSBzYW1lIHRo
aW5rIHZpYSBNYWtlZmlsZS5zcGwgZm9yIHJrMzM5OS4KClRoaXMgd291bGQgYmUgYW4gaW5pdGlh
bCB2ZXJzaW9uIGFuZCBpdCBjYW4gZWFzaWx5IGV4cGFuZCBmdXJ0aGVyIHRvIHN1cHBvcnQKb3Ro
ZXIgZmFtaWxpZXMgb2YgU29DJ3Mgd2l0aCB2YXJpZXR5IG9mIGJvb3Qgc3RhZ2VzIGxpa2UgVFBM
LCBTUEwuCgpTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25z
LmNvbT4KLS0tCiBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcgfCAgOCArKysrKysrKwog
ZG9jL1JFQURNRS5yb2NrY2hpcCAgICAgICAgICAgIHwgIDMgKy0tCiBzY3JpcHRzL01ha2VmaWxl
LnNwbCAgICAgICAgICAgfCAyMSArKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgMzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcK
aW5kZXggZGJlN2YxMWQzOS4uMjg2Yzg3MDEzNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC9LY29uZmlnCisrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwpAQCAt
MjIyLDYgKzIyMiwxNCBAQCBjb25maWcgUk9DS0NISVBfU1BMX1JFU0VSVkVfSVJBTQogY29uZmln
IFJPQ0tDSElQX0JST01fSEVMUEVSCiAJYm9vbAogCitjb25maWcgU1BMX1JPQ0tDSElQX0lNR19O
QU1FCisJc3RyaW5nICJTUEwgUm9ja2NoaXAgaW1hZ2UgbmFtZSIKKwlkZWZhdWx0ICJyazMzOTki
IGlmIFJPQ0tDSElQX1JLMzM5OQorCWhlbHAKKwkgIFRvIGNyZWF0ZSBTUEwgaW1hZ2UgZm9yIHJv
Y2tjaGlwIHRhcmdldHMgdGhlIGltYWdlIG5hbWUgd291bGQKKwkgIGRlcGVuZHMgb24gdGhlIFNv
QyBmYW1pbHkgdGhhdCB3b3VsZCBwYXNzIGFzIGFuIGFyZ3VtZW50IGFzCisJICAnLW4gcmszMzk5
JyB0byBta2ltYWdlIGZvciBjcmVhdGluZyBSb2NrY2hpcCBTUEwgYm9vdCBpbWFnZS4KKwogY29u
ZmlnIFNQTF9ST0NLQ0hJUF9FQVJMWVJFVFVSTl9UT19CUk9NCiAgICAgICAgIGJvb2wgIlNQTCBy
ZXF1aXJlcyBlYXJseS1yZXR1cm4gKGZvciBSSzMxODgtc3R5bGUgQlJPTSkgdG8gQlJPTSIKIAlk
ZXBlbmRzIG9uIFNQTCAmJiBFTkFCTEVfQVJNX1NPQ19CT09UMF9IT09LCmRpZmYgLS1naXQgYS9k
b2MvUkVBRE1FLnJvY2tjaGlwIGIvZG9jL1JFQURNRS5yb2NrY2hpcAppbmRleCBjNGU1ZjgzZGE3
Li5jY2JhYWFhOWE3IDEwMDY0NAotLS0gYS9kb2MvUkVBRE1FLnJvY2tjaGlwCisrKyBiL2RvYy9S
RUFETUUucm9ja2NoaXAKQEAgLTQyMSwxMSArNDIxLDEwIEBAIE9wdGlvbiAyOiBQYWNrYWdlIHRo
ZSBpbWFnZSB3aXRoIFNQTDoKICAgLSBQcmVmaXggcmszMzk5IGhlYWRlciB0byBTUEwgaW1hZ2UK
IAogICAgID0+IGNkIC9wYXRoL3RvL3UtYm9vdAotICAgID0+IC4vdG9vbHMvbWtpbWFnZSAtbiBy
azMzOTkgLVQgcmtzZCAtZCBzcGwvdS1ib290LXNwbC1kdGIuYmluIG91dAogCiAgIC0gV3JpdGUg
cHJlZml4ZWQgU1BMIGF0IDY0dGggc2VjdG9yCiAKLSAgICA9PiBzdWRvIGRkIGlmPW91dCBvZj0v
ZGV2L3NkYyBzZWVrPTY0CisgICAgPT4gc3VkbyBkZCBpZj1zcGwvdS1ib290LXNwbC1yb2NrY2hp
cC5iaW4gb2Y9L2Rldi9zZGMgc2Vlaz02NAogCiAgIC0gV3JpdGUgVS1Cb290IHByb3BlciBhdCAx
NjM4NCBzZWN0b3IKIApkaWZmIC0tZ2l0IGEvc2NyaXB0cy9NYWtlZmlsZS5zcGwgYi9zY3JpcHRz
L01ha2VmaWxlLnNwbAppbmRleCA1NGIxNjBkNzJiLi40OWMwNjQxYWEyIDEwMDY0NAotLS0gYS9z
Y3JpcHRzL01ha2VmaWxlLnNwbAorKysgYi9zY3JpcHRzL01ha2VmaWxlLnNwbApAQCAtMjM1LDYg
KzIzNSwxMCBAQCBBTEwtJChDT05GSUdfQVJDSF9aWU5RTVApCSs9ICQob2JqKS9ib290LmJpbgog
CiBBTEwtJChDT05GSUdfQVJDSF9NRURJQVRFSykJKz0gJChvYmopL3UtYm9vdC1zcGwtbXRrLmJp
bgogCitpZmRlZiBDT05GSUdfUk9DS0NISVBfUkszMzk5CitBTEwtJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkJKz0gJChvYmopL3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluCitlbmRpZgorCiBhbGw6CSQo
QUxMLXkpCiAKIHF1aWV0X2NtZF9jYXQgPSBDQVQgICAgICRACkBAIC0zNjksNiArMzczLDIzIEBA
IE1LSU1BR0VGTEFHU191LWJvb3Qtc3BsLW10ay5iaW4gPSAtVCBtdGtfaW1hZ2UgXAogJChvYmop
L3UtYm9vdC1zcGwtbXRrLmJpbjogJChvYmopL3UtYm9vdC1zcGwuYmluIEZPUkNFCiAJJChjYWxs
IGlmX2NoYW5nZWQsbWtpbWFnZSkKIAorIyBSb2NrY2hpcCBzcGVjaWZpYyBTUEwgYnVpbGQKK2lm
ZXEgKCQoQ09ORklHX1JPQ0tDSElQX1JLMzM5OSkseSkKKworaWZlcSAoJChDT05GSUdfU1BJX0ZM
QVNIX1NVUFBPUlQpLHkpCitST0NLQ0hJUF9JTUdfVFlQRSA6PSBya3NwaQorZWxzZQorUk9DS0NI
SVBfSU1HX1RZUEUgOj0gcmtzZAorZW5kaWYKKworTUtJTUFHRUZMQUdTX3UtYm9vdC1zcGwtcm9j
a2NoaXAuYmluID0gLW4gJChDT05GSUdfU1BMX1JPQ0tDSElQX0lNR19OQU1FKSBcCisJLVQgJChS
T0NLQ0hJUF9JTUdfVFlQRSkgLWQgJChNS0lNQUdFT1VUUFVUKQorCiskKG9iaikvdS1ib290LXNw
bC1yb2NrY2hpcC5iaW46ICQob2JqKS91LWJvb3Qtc3BsLmJpbiBGT1JDRQorCSQoY2FsbCBpZl9j
aGFuZ2VkLG1raW1hZ2UpCisKK2VuZGlmICMgQ09ORklHX1JPQ0tDSElQX1JLMzM5OQorCiAjIFJ1
bGUgdG8gbGluayB1LWJvb3Qtc3BsCiAjIE1heSBiZSBvdmVycmlkZGVuIGJ5IGFyY2gvJChBUkNI
KS9jb25maWcubWsKIHF1aWV0X2NtZF91LWJvb3Qtc3BsID89IExEICAgICAgJEAKLS0gCjIuMTgu
MC4zMjEuZ2ZmYzZmYTBlMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
