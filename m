Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB7FF66
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 20:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nN4fEBtLAGpdO0CvmfYKOm9louAVTlcCwWT6JBS7IGI=; b=FuqcSMPD2vgikX
	fTK7I/TO66U1zbrSVOsmStq/SZGFD4PC11wdZ/g0Y3F/4G9k/+OyH3adktJDYoybhzG4MBrOTNY7y
	WSDZ/YbQwfw6bJ5wm5jWqZCnpUIEceTWgO5sWzbPZpChnIFN/k+m08jTGZMhuw7OZXIzryfIMr1rI
	9UPfWbDbuXsPZEaAYMmy8eSxUhtENfa8F3rHFA6dLWTthVEjMsoLVt+DxWoPoTjsy8uhd57t65Ilx
	4yC3NgBqCno5ARo6HVYT53CQF2JIRU6xdepVHj6b107MI+zAPcSZwb7w8zoqVT50tw7oRVEDMrdZS
	WD6YSQJMz4ggI264gosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLX9M-0004p1-7H; Tue, 30 Apr 2019 18:06:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLX8Y-0003nf-08; Tue, 30 Apr 2019 18:05:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 67D3F282FE4
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [RFC 4/4] arm64: dts: rockchip: Set the display-subsystem devfreq
Date: Tue, 30 Apr 2019 14:05:24 -0400
Message-Id: <20190430180524.22710-5-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430180524.22710-1-gael.portay@collabora.com>
References: <20190430180524.22710-1-gael.portay@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_110550_625158_ADC8EFFD 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Lin Huang <hl@rock-chips.com>, Derek Basehore <dbasehore@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VXNlIHRoZSBEeW5hbWljIE1lbW9yeSBDb250cm9sbGVyIGFzIHRoZSBkaXNwbGF5LXN1YnN5c3Rl
bSdzIGRldmZyZXEKZGV2aWNlLgoKU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBv
cnRheUBjb2xsYWJvcmEuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LWdydS5kdHNpIHwgNCArKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS5kdHNpICAgICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktZ3J1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUuZHRz
aQppbmRleCA0MGU3ODE4NjU2MGIuLmE1Y2JiYzA4ZjdlMSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0c2kKQEAgLTM3NSw2ICszNzUsMTAgQEAKIAkJPDIw
MDAwMDAwMD47CiB9OwogCismZGlzcGxheV9zdWJzeXN0ZW0geworCWRldmZyZXEgPSA8JmRtYz47
Cit9OworCiAmZW1tY19waHkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQppbmRleCA4N2VlMDg0ZmFjODkuLjI1M2I0NzYxNjNm
ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCkBAIC0xNTUsNyAr
MTU1LDcgQEAKIAkJfTsKIAl9OwogCi0JZGlzcGxheS1zdWJzeXN0ZW0geworCWRpc3BsYXlfc3Vi
c3lzdGVtOiBkaXNwbGF5LXN1YnN5c3RlbSB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAsZGlz
cGxheS1zdWJzeXN0ZW0iOwogCQlwb3J0cyA9IDwmdm9wbF9vdXQ+LCA8JnZvcGJfb3V0PjsKIAl9
OwotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
