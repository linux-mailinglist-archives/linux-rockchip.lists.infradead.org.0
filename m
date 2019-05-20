Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6E12434F
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 00:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXCYDWyUvMtAFgbeV3pfi9yw38Bdjc9NElG9EG8AdGs=; b=T2pfF+WThOx75f
	swvnvZXlfCO61nMqIB5T/H/mX/5mNFHd+tFJQKR6prixQk/6YR8wzn10sy333GEhrv1+PUoUvgTBj
	ib0vqhcTjLB0feiaFF55cSZ9qSNnKsghnPf3NwPFuzCxXCuiK0n4U4wguNeXWPcL2phQDl6krvyOw
	8euXBcjnlGJfAhVJv6QizwjLfJIi4VpMFJQPFYsNxk91rM/mTsRmuYKppGJCcS5AvZGlbrjZsbJJk
	JaOgn74KeSZtvbntFDdWmdPWuuQLmaVZVFdlgECbOic1iHTTwqVQy6OaPuTbttv+w/Ilf/mU9vCMT
	7HBtWbbERorVRRL6mh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSqLT-0001PP-Ry; Mon, 20 May 2019 22:01:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSqL7-0000wu-LQ
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 22:01:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id c5so7318350pll.11
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 15:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f3Nfs/DRidR4E+JraOJ0QC9J7vTv8+QYMg2eI3k8SAk=;
 b=ANP+z80ryOBxlhAoD1NQiuq5KGhSBLK6TIAyvMuecyDwGcEkfmwOXtJpj+Du/vSJ2j
 AoChR4T/+6F80fFzk0rvnVB/EIndYuxLal4f8cCiaqLe05U0GduzYmbOk8ojE8Pj+Wg0
 NIMYtysotE4SUuLRlDzMUmTxAtNV3uMR5Rlss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f3Nfs/DRidR4E+JraOJ0QC9J7vTv8+QYMg2eI3k8SAk=;
 b=ewLAhAI+Fmo9cgMzIUdK+IrTXhz7apP4VcnUVtsni6W8tYOtfDeiMcBhOqkXUPR0l8
 bdd8lLobcFMIGhuiLLAJW5BljQKzxaoD+XtD1reI+J32XFtAX1sbiI6+RbWsRn8CoNWj
 kwfuMcR+0HtMmCCoUh9d3wg2FUVVJ9TMzEx9OncVMWP0kQz0Fj9o22m1cKGsMaP5A0a2
 wT1Ki19KxkVSdxrYK8RSpKSP4U592xm68K4mmJt4PeXdFOe+GK6nFTOK8wDCz1HjRO1b
 sXFCJAzUkIRRO5pux7nbuUcO31ePsO+6leX7aRAKCZwPw6JuHr6syN7smdTOC3qB4CwD
 oAig==
X-Gm-Message-State: APjAAAXSe7coNkkEecsRNxGhBdn3VuwuwHoAipholGQ1jEWOjI7kQJ7N
 ekh2WxDkSEqHDPBEqVlXkXZR9Q==
X-Google-Smtp-Source: APXvYqw+HZyUvC1Bqlvj8gcVb1cFFjSgW7AgvPr0buTJwsw1fzt8o6bbctJfe0WWJvLhJCv64ngozw==
X-Received: by 2002:a17:902:c85:: with SMTP id 5mr4274125plt.172.1558389661271; 
 Mon, 20 May 2019 15:01:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g17sm8484562pfb.56.2019.05.20.15.01.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 15:01:00 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: rockchip: Configure the GPU thermal zone for
 mickey
Date: Mon, 20 May 2019 15:00:51 -0700
Message-Id: <20190520220051.54847-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
References: <20190520220051.54847-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_150101_704793_544CDD40 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

bWlja2V5IGNyYW1zIGEgbG90IG9mIGhhcmR3YXJlIGludG8gYSB0aW55IHBhY2thZ2UsIHdoaWNo
IHJlcXVpcmVzCm1vcmUgYWdncmVzc2l2ZSB0aGVybWFsIHRocm90dGxpbmcgdGhhbiBmb3IgZGV2
aWNlcyB3aXRoIGEgbGFyZ2VyCmZvb3RwcmludC4gQ29uZmlndXJlIHRoZSBHUFUgdGhlcm1hbCB6
b25lIHRvIHRocm90dGxlIHRoZSBHUFUKcHJvZ3Jlc3NpdmVseSBhdCB0ZW1wZXJhdHVyZXMgPj0g
NjDCsEMuIEhlYXQgZGlzc2lwYXRlZCBieSB0aGUKQ1BVcyBhbHNvIGFmZmVjdHMgdGhlIEdQVSB0
ZW1wZXJhdHVyZSwgaGVuY2Ugd2UgY2FwIHRoZSBDUFUKZnJlcXVlbmN5IHRvIDEuNCBHSHogZm9y
IHRlbXBlcmF0dXJlcyBhYm92ZSA2NcKwQy4gRnVydGhlciB0aHJvdHRsaW5nCm9mIHRoZSBDUFVz
IG1heSBiZSBwZXJmb3JtZWQgYnkgdGhlIENQVSB0aGVybWFsIHpvbmUuCgpUaGUgY29uZmlndXJh
dGlvbiBtYXRjaGVzIHRoYXQgb2YgdGhlIGRvd25zdHJlYW0gQ2hyb21lIE9TIDMuMTQKa2VybmVs
LCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIG1pY2tleS4KClNpZ25lZC1vZmYtYnk6IE1hdHRo
aWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBzcGVj
aWZ5IGFsbCBDUFVzIGFzIGNvb2xpbmcgZGV2aWNlcwotIHMvZG93bnN0cmFtL2Rvd25zdHJlYW0v
IGluIGNvbW1pdCBtZXNzYWdlCgpOb3RlOiB0aGlzIHBhdGNoIGRlcGVuZHMgb24gIkFSTTogZHRz
OiByb2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCmVudHJ5IGZvciByazMyODggR1BVIiAoaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNzUwMDUvKQotLS0KIGFyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDY3ICsrKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzIGIvYXJjaC9hcm0vYm9v
dC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCmluZGV4IDM0Nzk3YWJlMzQwMy4uOTQ1ZTgw
ODAxMjkyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLW1pY2tl
eS5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCkBA
IC0xMzYsNiArMTM2LDczIEBACiAJfTsKIH07CiAKKyZncHVfdGhlcm1hbCB7CisJL2RlbGV0ZS1u
b2RlLyB0cmlwczsKKwkvZGVsZXRlLW5vZGUvIGNvb2xpbmctbWFwczsKKworCXRyaXBzIHsKKwkJ
Z3B1X2FsZXJ0X3dhcm1pc2g6IGdwdV9hbGVydF93YXJtaXNoIHsKKwkJCXRlbXBlcmF0dXJlID0g
PDYwMDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJCQloeXN0ZXJlc2lzID0gPDIwMDA+OyAvKiBt
aWxsaWNlbHNpdXMgKi8KKwkJCXR5cGUgPSAicGFzc2l2ZSI7CisJCX07CisJCWdwdV9hbGVydF93
YXJtOiBncHVfYWxlcnRfd2FybSB7CisJCQl0ZW1wZXJhdHVyZSA9IDw2NTAwMD47IC8qIG1pbGxp
Y2Vsc2l1cyAqLworCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJ
CQl0eXBlID0gInBhc3NpdmUiOworCQl9OworCQlncHVfYWxlcnRfaG90dGVyOiBncHVfYWxlcnRf
aG90dGVyIHsKKwkJCXRlbXBlcmF0dXJlID0gPDg0MDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJ
CQloeXN0ZXJlc2lzID0gPDIwMDA+OyAvKiBtaWxsaWNlbHNpdXMgKi8KKwkJCXR5cGUgPSAicGFz
c2l2ZSI7CisJCX07CisJCWdwdV9hbGVydF92ZXJ5X3ZlcnlfaG90OiBncHVfYWxlcnRfdmVyeV92
ZXJ5X2hvdCB7CisJCQl0ZW1wZXJhdHVyZSA9IDw4NjAwMD47IC8qIG1pbGxpY2Vsc2l1cyAqLwor
CQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJCQl0eXBlID0gInBh
c3NpdmUiOworCQl9OworCQlncHVfY3JpdDogZ3B1X2NyaXQgeworCQkJdGVtcGVyYXR1cmUgPSA8
OTAwMDA+OyAvKiBtaWxsaWNlbHNpdXMgKi8KKwkJCWh5c3RlcmVzaXMgPSA8MjAwMD47IC8qIG1p
bGxpY2Vsc2l1cyAqLworCQkJdHlwZSA9ICJjcml0aWNhbCI7CisJCX07CisJfTsKKworCWNvb2xp
bmctbWFwcyB7CisJCS8qIEFmdGVyIDFzdCBsZXZlbCB0aHJvdHRsZSB0aGUgR1BVIGRvd24gdG8g
YXMgbG93IGFzIDQwMCBNSHogKi8KKwkJZ3B1X3dhcm1pc2hfbGltaXRfZ3B1IHsKKwkJCXRyaXAg
PSA8JmdwdV9hbGVydF93YXJtaXNoPjsKKwkJCWNvb2xpbmctZGV2aWNlID0gPCZncHUgVEhFUk1B
TF9OT19MSU1JVCAxPjsKKwkJfTsKKworCQkvKgorCQkgKiBTbGlnaHRseSBhZnRlciB3ZSB0aHJv
dHRsZSB0aGUgR1BVLCB3ZSdsbCBhbHNvIG1ha2Ugc3VyZSB0aGF0CisJCSAqIHRoZSBDUFUgY2Fu
J3QgZ28gZmFzdGVyIHRoYW4gMS40IEdIei4gIE5vdGUgdGhhdCB3ZSB3b24ndAorCQkgKiB0aHJv
dHRsZSB0aGUgQ1BVIGxvd2VyIHRoYW4gMS40IEdIeiBkdWUgdG8gR1BVIGhlYXQtLXdlJ2xsCisJ
CSAqIGxldCB0aGUgQ1BVIGRvIHRoZSByZXN0IGl0c2VsZi4KKwkJICovCisJCWdwdV93YXJtX2xp
bWl0X2NwdSB7CisJCQl0cmlwID0gPCZncHVfYWxlcnRfd2FybT47CisJCQljb29saW5nLWRldmlj
ZSA9IDwmY3B1MCA0IDQ+LAorCQkJCQkgPCZjcHUxIDQgND4sCisJCQkJCSA8JmNwdTIgNCA0PiwK
KwkJCQkJIDwmY3B1MyA0IDQ+OworCQl9OworCisJCS8qIFdoZW4gaG90LCBHUFUgZ29lcyBkb3du
IHRvIDMwMCBNSHogKi8KKwkJZ3B1X2hvdHRlcl9saW1pdF9ncHUgeworCQkJdHJpcCA9IDwmZ3B1
X2FsZXJ0X2hvdHRlcj47CisJCQljb29saW5nLWRldmljZSA9IDwmZ3B1IDIgMj47CisJCX07CisK
KwkJLyogV2hlbiByZWFsbHkgaG90LCBkb24ndCBsZXQgR1BVIGdvIF9hYm92ZV8gMzAwIE1IeiAq
LworCQlncHVfdmVyeV92ZXJ5X2hvdF9saW1pdF9ncHUgeworCQkJdHJpcCA9IDwmZ3B1X2FsZXJ0
X3ZlcnlfdmVyeV9ob3Q+OworCQkJY29vbGluZy1kZXZpY2UgPSA8JmdwdSAyIFRIRVJNQUxfTk9f
TElNSVQ+OworCQl9OworCX07Cit9OworCiAmaTJjMiB7CiAJc3RhdHVzID0gImRpc2FibGVkIjsK
IH07Ci0tIAoyLjIxLjAuMTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
