Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F6F23F9C
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZnAdrW9kN9QswRbfm+oEjFOKdi1CM1E5Mw2eYV+9sY=; b=i138BuvZpRrY0w
	ctVxYT2jHNnWWbtKihahTFHiIA92io7pjJDipSQq2BtblmKjTFeFJWp1twWJS13F8Z3hP5jo5PB0z
	YunqRuR2qTqLyt9EwtygcfiAdgc9qIQ+R6R2hmNsR+u7LhtgSZSQGz6AyrDJcPZvJG5nuXXxW6ONi
	Y+uuyobemVMWuOYcB5YwMxtgZqSaYxVJ04QD9lbfoeXy6oCZnw5Ys7L8Dhm1QVtuiMLR85Y7BOfqN
	dPiTAerFE/otatGvAM37ZPNEpIeGPKNAF90N3t1iw/Xubd5AN+q8M5k71HlWbWcdYAhqdnhoykxgv
	SyUhfo41JRUPfcj6by1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWf-0008KH-34; Mon, 20 May 2019 17:56:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWG-0007pd-UX
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:56:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so7133701pgm.7
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YtT3QQC/EcCQGVPUxChzIKDFjejylVy5RwDw6h0rP8Y=;
 b=CxFoYWn12E2Wfl/DUay6zYNsj7HkCPiuVskqwVaONHUcKwExrtZmQOUQe3Ey65gpym
 dAOGhlevbrpgGEs202kzU4iLQG4beU2kc1yQsScSMSHPdzEI2Apm3x9wOXfEkc/mhrVz
 YFNNrU0Y11kLRKndmuzqLvU8tkqX4lUaA3LPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YtT3QQC/EcCQGVPUxChzIKDFjejylVy5RwDw6h0rP8Y=;
 b=ZfntLBjDTQjsf6eyOHI8Dg692clnCHzWwHN6f+gk2GGeWD6Y+gihuACK/TIkWLcT54
 tt+g+TfhDNdGHkRCPzjdgzXZ06M5oimtpOkKwfnFoDFHkmt8HkWM4Aoia2fEVqZcEI1H
 ZFk6CIi/O2+O8tutPkoYvD2ROvoOwFHdlyAaZzxt5ightxZYjwSkGMdzVSoLhd3Y2UY/
 Qmk54KS6gPU+ur0E25KnEujy+YJ/ZzUNHA4/j1/iscUMX+6+tr2CbLJZorOHViiC76NR
 ClHsjhzamK6LGdyHNhZWXBkwBmrDtrwSPSA78kyMEIE6hSsyePofypMTBoSqkF5+Y0T3
 YWSg==
X-Gm-Message-State: APjAAAV/i69tVH/lxifW0W+j71o1cRIJd9CDUEM4yhd3Eu8+XpE+ACOe
 VX51/FNrHdSBO2jKZ3TxPiTJdQ==
X-Google-Smtp-Source: APXvYqwliCorEDZCbklnXSYAbGCutGmLbgJZVbkDQsXYpFHd/ACzt+u6KekgF4vh+NU86UtFjG8ebw==
X-Received: by 2002:aa7:9e51:: with SMTP id z17mr81249778pfq.212.1558374976378; 
 Mon, 20 May 2019 10:56:16 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:15 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 3/3] ARM: dts: rockchip: Allow wakeup from rk3288-veyron's
 dwc2 USB ports
Date: Mon, 20 May 2019 10:56:05 -0700
Message-Id: <20190520175605.2405-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520175605.2405-1-dianders@chromium.org>
References: <20190520175605.2405-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105617_447549_AE7B8B5C 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
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

Changes in v3: None
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
