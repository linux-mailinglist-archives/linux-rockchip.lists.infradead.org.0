Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B1723DF6
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwfxbvSLie/YZSIiH+jSjeiqBAbTeOKDofg0Cc5Qid0=; b=JG+nQBftvO5s0j
	QVDhnwx5qeY2BZydvf/EBDNFJG7a0frTSs6AD4OzkI5ISS008ddL0CDlT5ib2ftB1Qgf0X1SIm8oB
	m+bqMD/BFzhJe8j3M2mEpOokQgw3i5XI3l4CSTM7vq/gxHyPyq5N98PhXxi5FdicOYBPwkKN0LSi1
	XinbtBAbHGCZB9N3IUtRfvLUp7+HMyv5S+4QhDb7XdiIucu9Y9qiOCHNKqy01LoD80KJb6ChpX2hh
	0VPtkA10KsfAx6127xx0jbjLYpZ384aI9ALaNanal8MeAAlb62tvP00xUOH33D6LKTG2VjUFslXL6
	DRSJuuCTMCvnIgHQ0fAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlfa-0007Mn-0S; Mon, 20 May 2019 17:01:50 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlfS-0007Aq-1n
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:01:43 +0000
Received: by mail-it1-x142.google.com with SMTP id a190so166338ite.4
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qokhmyg9AkiB7tKMWMX8AGwwTlpK4uMhtkgK3NBAxgg=;
 b=kMN/Oml37u7vJbRpOT0j2yTOznwnEEooNyxt25SS3DcSRXTuB1xPm0P7e8vbR20kre
 LT8ziTh1f2zXBnsymYXwKEQ3FpYPOvslMACY7YqTwRwlNJ/edFwO+SiIjkhMWNGqKUcj
 fp/rHmkPpnAylQNQMEAa4u2Vi0qYh0nDsHqXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qokhmyg9AkiB7tKMWMX8AGwwTlpK4uMhtkgK3NBAxgg=;
 b=DNkiqySNQeZWoVdWu/gbpAErNY6V4un9MtSmEVq/xdbfpkhpbkD284rSXbQ2CI/+2h
 P+Ugek/RnhKWeJ1RRssFEzo2VVjq2agtdbYOkFjlqSmIrB8+otLKfGKs+Im4dCb6qApY
 zmPwQZ3CAQQx89mwunQjbNaiWHjTRL2BbU6dDi08+C0F+Wau3wbJm3OtMsfXKgm4JWWK
 C0TQZNcLxHVyEu8UXDPyXHmsS4l3EJeeLTfaoOkBiqzLXw+e0+QfeBTa8FFeAGO2HN5F
 /p2008xYiti1qkX6pQPRIKM1JyVDpJMZN+umi3gNS9W/gHC9kbAQYB8DYPpigvo4m3Jt
 w3vw==
X-Gm-Message-State: APjAAAU95+lZ1v1sREuPpaifxWKXk8xQLMR3eD1OP7/7T5+B/MWFja2O
 AYyzl907CqKo5T1dXkaOm46zFg==
X-Google-Smtp-Source: APXvYqyHAk2xbHN0WR5VjQgADInV80IQzivFF7mpA00fOKKjAmpbUTNHpk3Rj+5wPik797i+kj5q4A==
X-Received: by 2002:a02:c818:: with SMTP id p24mr3087274jao.100.1558371701136; 
 Mon, 20 May 2019 10:01:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id s4sm6118340ioc.76.2019.05.20.10.01.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:01:40 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone for
 mickey
Date: Mon, 20 May 2019 10:01:32 -0700
Message-Id: <20190520170132.91571-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520170132.91571-1-mka@chromium.org>
References: <20190520170132.91571-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_100142_089751_3804945D 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
dGlvbiBtYXRjaGVzIHRoYXQgb2YgdGhlIGRvd25zdHJhbSBDaHJvbWUgT1MgMy4xNAprZXJuZWws
IHRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgbWlja2V5LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhp
YXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Ci0tLQpOb3RlOiB0aGlzIHBhdGNoIGRlcGVu
ZHMgb24gIkFSTTogZHRzOiByb2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCmVudHJ5IGZvciBy
azMyODggR1BVIiAoaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNzUw
MDUvKQotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDY0
ICsrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRz
IGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCmluZGV4IGYxMThk
OTJhNDlkMC4uZjBiODNhZmEyYTYwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMy
ODgtdmV5cm9uLW1pY2tleS5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJv
bi1taWNrZXkuZHRzCkBAIC0xMzgsNiArMTM4LDcwIEBACiAJL2RlbGV0ZS1wcm9wZXJ0eS9tbWMt
aHMyMDAtMV84djsKIH07CiAKKyZncHVfdGhlcm1hbCB7CisJL2RlbGV0ZS1ub2RlLyB0cmlwczsK
KwkvZGVsZXRlLW5vZGUvIGNvb2xpbmctbWFwczsKKworCXRyaXBzIHsKKwkJZ3B1X2FsZXJ0X3dh
cm1pc2g6IGdwdV9hbGVydF93YXJtaXNoIHsKKwkJCXRlbXBlcmF0dXJlID0gPDYwMDAwPjsgLyog
bWlsbGljZWxzaXVzICovCisJCQloeXN0ZXJlc2lzID0gPDIwMDA+OyAvKiBtaWxsaWNlbHNpdXMg
Ki8KKwkJCXR5cGUgPSAicGFzc2l2ZSI7CisJCX07CisJCWdwdV9hbGVydF93YXJtOiBncHVfYWxl
cnRfd2FybSB7CisJCQl0ZW1wZXJhdHVyZSA9IDw2NTAwMD47IC8qIG1pbGxpY2Vsc2l1cyAqLwor
CQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJCQl0eXBlID0gInBh
c3NpdmUiOworCQl9OworCQlncHVfYWxlcnRfaG90dGVyOiBncHVfYWxlcnRfaG90dGVyIHsKKwkJ
CXRlbXBlcmF0dXJlID0gPDg0MDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJCQloeXN0ZXJlc2lz
ID0gPDIwMDA+OyAvKiBtaWxsaWNlbHNpdXMgKi8KKwkJCXR5cGUgPSAicGFzc2l2ZSI7CisJCX07
CisJCWdwdV9hbGVydF92ZXJ5X3ZlcnlfaG90OiBncHVfYWxlcnRfdmVyeV92ZXJ5X2hvdCB7CisJ
CQl0ZW1wZXJhdHVyZSA9IDw4NjAwMD47IC8qIG1pbGxpY2Vsc2l1cyAqLworCQkJaHlzdGVyZXNp
cyA9IDwyMDAwPjsgLyogbWlsbGljZWxzaXVzICovCisJCQl0eXBlID0gInBhc3NpdmUiOworCQl9
OworCQlncHVfY3JpdDogZ3B1X2NyaXQgeworCQkJdGVtcGVyYXR1cmUgPSA8OTAwMDA+OyAvKiBt
aWxsaWNlbHNpdXMgKi8KKwkJCWh5c3RlcmVzaXMgPSA8MjAwMD47IC8qIG1pbGxpY2Vsc2l1cyAq
LworCQkJdHlwZSA9ICJjcml0aWNhbCI7CisJCX07CisJfTsKKworCWNvb2xpbmctbWFwcyB7CisJ
CS8qIEFmdGVyIDFzdCBsZXZlbCB0aHJvdHRsZSB0aGUgR1BVIGRvd24gdG8gYXMgbG93IGFzIDQw
MCBNSHogKi8KKwkJZ3B1X3dhcm1pc2hfbGltaXRfZ3B1IHsKKwkJCXRyaXAgPSA8JmdwdV9hbGVy
dF93YXJtaXNoPjsKKwkJCWNvb2xpbmctZGV2aWNlID0gPCZncHUgVEhFUk1BTF9OT19MSU1JVCAx
PjsKKwkJfTsKKworCQkvKgorCQkgKiBTbGlnaHRseSBhZnRlciB3ZSB0aHJvdHRsZSB0aGUgR1BV
LCB3ZSdsbCBhbHNvIG1ha2Ugc3VyZSB0aGF0CisJCSAqIHRoZSBDUFUgY2FuJ3QgZ28gZmFzdGVy
IHRoYW4gMS40IEdIei4gIE5vdGUgdGhhdCB3ZSB3b24ndAorCQkgKiB0aHJvdHRsZSB0aGUgQ1BV
IGxvd2VyIHRoYW4gMS40IEdIeiBkdWUgdG8gR1BVIGhlYXQtLXdlJ2xsCisJCSAqIGxldCB0aGUg
Q1BVIGRvIHRoZSByZXN0IGl0c2VsZi4KKwkJICovCisJCWdwdV93YXJtX2xpbWl0X2NwdSB7CisJ
CQl0cmlwID0gPCZncHVfYWxlcnRfd2FybT47CisJCQljb29saW5nLWRldmljZSA9IDwmY3B1MCA0
IDQ+OworCQl9OworCisJCS8qIFdoZW4gaG90LCBHUFUgZ29lcyBkb3duIHRvIDMwMCBNSHogKi8K
KwkJZ3B1X2hvdHRlcl9saW1pdF9ncHUgeworCQkJdHJpcCA9IDwmZ3B1X2FsZXJ0X2hvdHRlcj47
CisJCQljb29saW5nLWRldmljZSA9IDwmZ3B1IDIgMj47CisJCX07CisKKwkJLyogV2hlbiByZWFs
bHkgaG90LCBkb24ndCBsZXQgR1BVIGdvIF9hYm92ZV8gMzAwIE1IeiAqLworCQlncHVfdmVyeV92
ZXJ5X2hvdF9saW1pdF9ncHUgeworCQkJdHJpcCA9IDwmZ3B1X2FsZXJ0X3ZlcnlfdmVyeV9ob3Q+
OworCQkJY29vbGluZy1kZXZpY2UgPSA8JmdwdSAyIFRIRVJNQUxfTk9fTElNSVQ+OworCQl9Owor
CX07Cit9OworCiAmaTJjMiB7CiAJc3RhdHVzID0gImRpc2FibGVkIjsKIH07Ci0tIAoyLjIxLjAu
MTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
