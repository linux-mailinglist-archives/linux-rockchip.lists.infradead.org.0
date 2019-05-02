Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FF5124CA
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1o1/CWSWLOYlyEOuNmqxWSlOJQMtuyyBesLaaMc3ClE=; b=DhAPs9wCUIDOD2
	ciBg5MxoIMkpXn7Zo6gXwIZCJhB/bE5Nq+o+jwSoOj+flilrKlKQjeZEppLdC9pIWKPh1JcAS1T7y
	PU1Mzwjeui0uw/LR/wUjbEgqOHAZXC4ItGRw3H4pUVta+OGGWtVrPD0gFq21KkSL6LUZsNDPrnjz9
	cNtDoKV5vUdyhlreHk/DN2al6CpaBg9SVwtDhe+fArjFJLOHqWy3TulQ1hb6rQgpb2PIgpXalbXx7
	zjOY+LmirEuO48CN/0W5PWmm9g7TWPEwfdXIxcuDSQVepocTLEqDRNelRLmaXmXsFfqS64WpoO9jN
	ECmwMZaJkypMxlUNdXSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKb8-0005HY-UV; Thu, 02 May 2019 22:54:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKax-00053S-7A
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:54:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so1704414pln.9
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BCfT3guVZby54KoAuU06+BY6v/qUrN3VwEkT+0PJiPM=;
 b=myoH4NG/U3H7QRfzmXh4KXBkwHqlnBXLuw+YtDbLUP16dgiGTtAys0/bk3SYGDdI70
 6K+XsQzwdrj70SZjh8KM5efvveW/76bJR9i09nnkUlZn/ZFw1ZqUNUvi7N6yAStsPwSx
 uiRq7YcNI6KCMxbDCNVDo5hZeJamSb50B5Czo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BCfT3guVZby54KoAuU06+BY6v/qUrN3VwEkT+0PJiPM=;
 b=A8xb/zJzfw76X+0qAXk0i7tcAYGNJMWENF+lV+JrkGunbanZeJXAbEUunU5YbFlfey
 BjOhCq7vq1KI2PvQfiYZVsqQvvH66PRGNzOuA956PBcBRzAnJVcX/w45jfwUQqNvUhrj
 KvgK8ZD5E4N8RmaO4Zi5qyjkegMPbx2GOfYlnZWf7iXPN9afIo6vH2Yz/dWTJOg15pGr
 Dp0TrLyl2t1WJ2SnW15SABj0ax0UQ89nRK6pKlH4fQLwsqoUQdwD/d7TwpSBtZSbXuen
 gmGN9rpbSMj3d/39imq7U4EPhl2sDyz5e8lm4TplE1pwY8jzeYIPxZ9tm8/Qd2pVTDaj
 ynmw==
X-Gm-Message-State: APjAAAU9ixoR190lqISGs29EegRGypAMP1aVrLpYA81Ty+FTEPhK3qyN
 mMNI418XDUyW5zpqYHeGJz8UGQ==
X-Google-Smtp-Source: APXvYqw7cw2KkNl8Nu4qGTRrZSO9BSZbc8Jug59xzytFinnS0nDNEMXcfMRtFwgbTp5rGb5QpsTCQQ==
X-Received: by 2002:a17:902:1602:: with SMTP id
 g2mr6499886plg.325.1556837666467; 
 Thu, 02 May 2019 15:54:26 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:25 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/5] ARM: dts: rockchip: Switch to builtin HDMI DDC bus on
 rk3288-veyron
Date: Thu,  2 May 2019 15:53:34 -0700
Message-Id: <20190502225336.206885-3-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155427_257175_6B12F922 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Downstream Chrome OS kernels use the builtin DDC bus from dw_hdmi on
veyron.  This is the only way to get them to negotiate HDCP.

Although HDCP isn't currently all supported upstream, it still seems
like it makes sense to use dw_hdmi's builtin I2C.  Maybe eventually we
can get HDCP negotiation working.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron.dtsi | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..e1bee663d2c5 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -163,7 +163,8 @@
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c5>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_ddc>;
 	status = "okay";
 };
 
@@ -334,14 +335,6 @@
 	i2c-scl-rising-time-ns = <300>;		/* 225ns measured */
 };
 
-&i2c5 {
-	status = "okay";
-
-	clock-frequency = <100000>;
-	i2c-scl-falling-time-ns = <300>;
-	i2c-scl-rising-time-ns = <1000>;
-};
-
 &io_domains {
 	status = "okay";
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
