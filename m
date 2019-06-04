Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BC834E1E
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=614lkTIiCd9tZOQNJZcNtSk5lS2iRB84WEVfZC4qDiA=; b=rj0zV6Ukrb7DP4
	QrRNQx3CY40TtzBPwS8/O34UMLhxV8zsxV/6jw6HyYjwYy5efS+KY29IcDLitNtJoFmAHGvm2KZPX
	VsiFFI/GNdGICc+SuTBEh1dAiyM7YghKZ4p34FT1YAYTQ3kUU5dxG/NWcqnT5cIK+EN/RD4xEgQ4Q
	WHxrw3TB8iJYuGmYw8lLC+wyvd6BsS/8XGCDrGv9NKDhLaukQf5pjQSGAaYDq2YLPtPJCLAg1Vbau
	5ZptrXd97wcpbO5fJx0wL2SR7tS3vwl59rC4A8S6ynfW5y2GlAfIKeoF1wZvPHxVu+AnvctOt4BzD
	4vUkDtwwjjalbShGDXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCla-0005Op-BG; Tue, 04 Jun 2019 16:58:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYClV-0005I6-Sf
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 16:58:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so2709685wmd.1
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 09:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
 b=U8iHJaeNQwgfZyonZpmCY+8eHEAJFzgZQHl4ZBgMB7Ehc1h2CJidpz9etKcpnvU01a
 fdT0yfOUja+9mp77Qt7n0A8kIpZCp5BOm+jY1QG8/1SSyaF/lYSYJkKv5lhQvqfxApcs
 aRvUtwN/SQiwf9Gb3ICSTbT7qQxfw8EzQ4t37U4ioJKeyYm9ZKp68qrJaS5TiPi8HNuL
 Ad2tzh8fiCQgixXuooOSB0jyT4RrTmlzXAAWj6F5suSxrHSkAaLOwXQA6Q8jKbVGsBxv
 l0AZtugD8sTl+zF6170ZkYKO1l5PD79mwoFVwLwixQlwxPFdlkYXrZ5P9WHE/ixvl8vP
 LFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
 b=POE7aa8vYWxfO/LxAVvzdiCZ6LrplIjlcT8vDVywomMTVz2awHdlRrkC89XntlDQ55
 Zt2pkTeQzBLuKiyFYnJVuaWbWtq3kLI34AhgBG3OLxJtmvO+KEcXmmbTGJQupoAvC5jS
 F6C3Kd8767dP+psYIecD19ahQZcCeFWPqsPiedmKmnbHZGEqLb2O9+bj6U7EXvucPxyV
 ppyEVeXILQhHOjxgkcbHK2aWwavY5HNlUujs9aoAdWEEcwlU7IB9v2RmDloNU6Fv46NI
 9EjvOKIQqka3kntjNTVBhtgeqHwTE9jluXg+Jltel6jU/shibkNvG+I7cqkMgvKZeAO0
 z0AQ==
X-Gm-Message-State: APjAAAXCpia3SRHxZHcsEkIW/KhdezrxGLnBJON2DhWMCa+YntPEpZxl
 jTPY0Bvg+Kkek/tuOnX+Cg+zOw==
X-Google-Smtp-Source: APXvYqyTSxvUapZ02X/hXKoASJXPNOtj9HjRjSK5iLdyKziVYT0pPX38I5nv+gb7+mLfsXpPzGyVLg==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr9346231wmf.19.1559667504165; 
 Tue, 04 Jun 2019 09:58:24 -0700 (PDT)
Received: from clegane.local (20.119.129.77.rev.sfr.net. [77.129.119.20])
 by smtp.gmail.com with ESMTPSA id t13sm25524979wra.81.2019.06.04.09.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:58:23 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA governor
 for rock960
Date: Tue,  4 Jun 2019 18:57:58 +0200
Message-Id: <20190604165802.7338-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_095826_127365_150FFA0B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, manivannan.sadhasivam@linaro.org,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Q3VycmVudGx5IHRoZSBkZWZhdWx0IHRoZXJtYWwgdmFsdWVzIGZvciB0aGUgcmszMzk5LXJvY2s5
NjAgYm9hcmQgaXMKaW5oZXJpdGVkIGZyb20gdGhlIGdlbmVyaWMgZGVmaW5pdGlvbiBpbiByazMz
OTkuZHRzaS4KCkluIG9yZGVyIHRvIGVuc3VyZSB0aGUgcm9jazk2MCBoYXMgbW9yZSByb29tIGZv
ciB0aHJvdWdwdXQgYmVmb3JlCmJlaW5nIGNhcHBlZCBieSB0aGUgdGhlcm1hbCBmcmFtZXdvcmsg
YW5kIGlzIGNvcnJlY3RseSBzdXBwb3J0ZWQgYnkKdGhlIElQQSBnb3Zlcm5vciwgbGV0J3MgZGVm
aW5lIHRoZSBwb3dlciB2YWx1ZXMgYW5kIHRoZSByaWdodCB0cmlwCnBvaW50cyBmb3IgYmV0dGVy
IHBlcmZvcm1hbmNlczoKCiAtIHN1c3RhaW5hYmxlIHBvd2VyIGlzIHRlc3RlZCB0byBiZSAxNTUw
bVcKCiAtIGluY3JlYXNlIHRoZSBmaXJzdCBtaXRpZ2F0aW9uIHBvaW50IHRvIDc1wrBDIGluIG9y
ZGVyIHRvIGdldCBiZXR0ZXIKICAgcGVyZm9ybWFuY2VzCgogLSB0aGUgZmlyc3QgdHJpcCBwb2lu
dCBpcyA2NcKwQyBpbiBvcmRlciB0byBsZXQgdGhlIElQQSB0byBjb2xsZWN0CiAgIGVub3VnaCBk
YXRhIGZvciB0aGUgUElEIHJlZ3VsYXRpb24gd2hlbiBpdCByZWFjaGVzIDc1wrBDCgogLSByZXN0
cmljdCB0aGUgY29vbGluZyBkZXZpY2UgdG8gdGhlIGJpZyBDUFVzIGFzIHRoZSBsaXR0bGUgQ1BV
cwogICBjb250cmlidXRpb24gdG8gdGhlIGhlYXRpbmcgZWZmZWN0IGNhbiBiZSBjb25zaWRlcmVk
IG5lZ2xpZ2libGUKClRoZSBpbnRlbGxpZ2VudCBwb3dlciBhbGxvY2F0b3IgUElEIGNvZWZmaWNp
ZW50IHRvIGJlIHNldCBpbiBzeXNmcwphcmU6CgogICAga19kOiAwCiAgICBrX3BvOiA3OQogICAg
a19pOiAxMAogICAga19wdTogNTAKClNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5p
ZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgotLS0KIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9jazk2MC5kdHMgICAgICB8IDM5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAzOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jazk2MC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0cwppbmRleCAxMjI4NWM1MWNjZWIuLjcwMWQ1YjVmYWQ0NiAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHMKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHMKQEAgLTEx
NCw2ICsxMTQsNDUgQEAKIAl9OwogfTsKIAorJnRoZXJtYWxfem9uZXMgeworCWNwdV90aGVybWFs
OiBjcHUgeworCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwPjsKKwkJcG9sbGluZy1kZWxh
eSA9IDwxMDAwPjsKKwkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAwPjsKKwkJc3VzdGFpbmFi
bGUtcG93ZXIgPSA8MTU1MD47CisKKwkJdHJpcHMgeworCQkJY3B1X2FsZXJ0MDogY3B1X2FsZXJ0
MCB7CisJCQkJICAgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKKwkJCQkgICAgaHlzdGVyZXNpcyA9
IDwyMDAwPjsKKwkJCQkgICAgdHlwZSA9ICJwYXNzaXZlIjsKKwkJCX07CisKKwkJCWNwdV9hbGVy
dDE6IGNwdV9hbGVydDEgeworCQkJCSAgICB0ZW1wZXJhdHVyZSA9IDw3NTAwMD47CisJCQkJICAg
IGh5c3RlcmVzaXMgPSA8MjAwMD47CisJCQkJICAgIHR5cGUgPSAicGFzc2l2ZSI7CisJCQl9Owor
CisJCQljcHVfY3JpdDogY3B1X2NyaXQgeworCQkJCSAgdGVtcGVyYXR1cmUgPSA8OTUwMDA+Owor
CQkJCSAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCQkgIHR5cGUgPSAiY3JpdGljYWwiOworCQkJ
fTsKKwkJfTsKKworCQljb29saW5nLW1hcHMgeworCQkJICAgICBtYXAwIHsKKworCQkJICAgICB0
cmlwID0gPCZjcHVfYWxlcnQxPjsKKwkJCSAgICAgY29vbGluZy1kZXZpY2UgPQorCQkJCQk8JmNw
dV9iMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQk8JmNwdV9iMSBU
SEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+OworCQkJfTsKKwkJfTsKKwl9OworfTsK
KwogJnVzYmRyZF9kd2MzXzAgewogCWRyX21vZGUgPSAib3RnIjsKIH07Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
