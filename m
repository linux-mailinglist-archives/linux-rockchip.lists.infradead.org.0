Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE36C210DA
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 01:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pS4g81QghClzVxmkhD492IAY4fhPiX0Ut/SX5ZpdCg=; b=tS9eWOecHwsxXZ
	ebEp2wLGa5XzQwQXVJze+ZVKTknVc9tx975P7rK/ExSQSRgcSaTJe87JRApfuX8vDdz1gKb8k0dhl
	cQlLJRbNkDC97E0TZeolkIG6G9EReUK9fTpg15JMDCudl90gubwwiPLC6WteFDOtZIMEFSsIDHz0C
	JtwG3LhfO4c4r1FDSihmSFp6aLB2OlYdykHX2/lrm51oFVNmoF6/AhZqIihtLT7ZV4gP5BWmwFqti
	tKRasqfWKhovIgzrYeV0QUm6GiDZOgj/i3VvUMKGIAn1NiRhFJHWf2z7cE6ynK6zKK4BLxZGcvQV2
	P7vU4xPLobwzf4FxNoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPMW-0003vB-NE; Thu, 16 May 2019 23:00:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPM4-0002Sr-0p
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 23:00:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so2594977pfm.13
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 16:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
 b=IrWnxdlePeHzk4plSAn4SitSypwJhfMhyVRFzVajRhwefK/vTtfDyVbKcueIKno2Ov
 jT6zbh26BxuIW4pNBvtfSUcEVz8djCazhjKU2cYWODdnIiwcJETXjueu1AdTY2Vy4UaH
 9FEwUwnG58TWdJ+b6VXxLxHhJE5mCkwSbNT+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
 b=KR4v4ODQX0vGhSXrIYgPoMhI2vFfu1YT9b3zgQPCSp+27QRd7I5IwyKzciHPz9p1Rv
 e6Y9/0FgO2dC3EgvvmvwElm7Srnldbn9ojkvUarn123RrKOLAM4owmTTKvYkW44Gtzkh
 zsoxruumoQKywd38HUlpfce+DWfQ7l3r9+6yZe+XfaPa3ojffXpDXQEC0FqnfeK5POkd
 20fSLx2K1MZgisyIbwTfCiyLHuS/0hM5XfxY5V/haO3iPaz9+n/GeBDbw2YJny0fzqd6
 zNWG88g5CmFwprXmVFNl4uTuzRQQMb+cwS3hFL15cLgBnMrItR8MRWAb7VLIeVY5Ve45
 VetQ==
X-Gm-Message-State: APjAAAWtvTvXlXFUqz+ou1uQf8U+EdF7prW9ztG6inwCOzX+KP/ufKLn
 IGFQWY51+JZcB8aWnxdRnNCeXw==
X-Google-Smtp-Source: APXvYqyXmrMlXwbThNdH5OYzM2uXETKw3ITSWk1x8137xR6JOng1E+DtlSZxRvtpsu174gwuzPC5Dw==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr57008369pfd.115.1558047603560; 
 Thu, 16 May 2019 16:00:03 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j64sm1769506pfb.126.2019.05.16.16.00.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 16:00:02 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [REPOST PATCH v2 3/3] ARM: dts: rockchip: Allow wakeup from
 rk3288-veyron's dwc2 USB ports
Date: Thu, 16 May 2019 15:59:41 -0700
Message-Id: <20190516225941.170355-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516225941.170355-1-dianders@chromium.org>
References: <20190516225941.170355-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_160004_324302_FF16E92D 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>, Mark Rutland <mark.rutland@arm.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 dinguyen@opensource.altera.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We want to be able to wake from USB if a device is plugged in that
wants remote wakeup.  Enable it on both dwc2 controllers.

NOTE: this is added specifically to veyron and not to rk3288 in
general since it's not known whether all rk3288 boards are designed to
support USB wakeup.  It is plausible that some boards could shut down
important rails in S3.

Also note that currently wakeup doesn't seem to happen unless you use
the "deep" suspend mode (where SDRAM is turned off).  Presumably the
shallow suspend mode is gating some sort of clock that's important but
I couldn't easily figure out how to get it working.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- rk3288-veyron dts patch new for v2.

 arch/arm/boot/dts/rk3288-veyron.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..1d8bfed7830c 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -424,6 +424,7 @@
 
 &usb_host1 {
 	status = "okay";
+	snps,need-phy-for-wake;
 };
 
 &usb_otg {
@@ -432,6 +433,7 @@
 	assigned-clocks = <&cru SCLK_USBPHY480M_SRC>;
 	assigned-clock-parents = <&usbphy0>;
 	dr_mode = "host";
+	snps,need-phy-for-wake;
 };
 
 &vopb {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
