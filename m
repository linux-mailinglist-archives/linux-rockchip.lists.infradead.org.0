Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD81AB72A6
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 07:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1M4XjRfztT6Non9SnJ1GlS7VP/sr8g4F3hnUHX6/Tk=; b=rRB2hSTJhOu4+M
	yZlT6BA//rf+upAd9fE1VWh6G0srlP4j+eaf7nTiqESuPiFuK8PYiZr0xyHRl6ZT9Ua9JU1apExd1
	Fa12KqcRDw/pUk5HRzlUM21CTTAKWzaiL/sq86LYrB92rpmFjbSIWlTaLKRKd7qQJ0SxFWXEVAaJp
	KIyecLCigftO9LWoGylYQrrN7mIghf6mSpapf6QYvtmtd+G0UYd1Pk/G1Bk2Wp1RrXEcqhMG2rs58
	CeyxHbDXhyDWWxgpVX9b0n+DYkfTszFbopG2GMFP29bPAg1YDlYehd0Zf3DxvyqE940ihOyUNCbhs
	i+FgDVNoW7/M4fPcWMNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp0P-0005aC-KH; Thu, 19 Sep 2019 05:29:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozn-0004y1-BK
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 05:28:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so1479038pfn.11
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 22:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XPWIJYAR47Worstin6zW+dVRix1pyzYI/7tlhqwLmcw=;
 b=CVrhIqzEBP+EyUAVxY2kKenvRSLjM/kDVDi5A1RYbnBpBG+8/E94MY4AM0cLYF1Tsr
 ylqt/pSWzFvWtpYVq0S/5E6lkJy2n3J0OIU9yfRB58+rgKdE3utAvYu+obSsiTsDUSzs
 ewuKHkaieM/KaNUCEz+7NmRhdqohxPeCcdy2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XPWIJYAR47Worstin6zW+dVRix1pyzYI/7tlhqwLmcw=;
 b=IyQC7003awvDqUUasS5P6Jlr1YxJrcpokQ1c2mDpk3N63oe2c1TnhXMNn2XqGFVXAF
 4Thgoh8O9LttFkTu8hw7KCZ1xWIYTXdLahsEWAZhfuUTowMpGw9MlFesX/c/R6HUet0M
 VIddrYS/NgLRaU0qUvJ0AQXEUdUXNRh9qGFMWv3J8um3Gw4PQBXBVPHnagOQ4Ouli2Ju
 wJhg/qVEx9olymTJU/Qux/lcwf2ZRzpWzUG5j0UOTiETGxJnJ02zH/JXorfsC685XPli
 1vXegXXX1QVvEtmXoi+lQK0Qcxo2qMr8EMBsCWmXOOmiGqVHQthJ5a4SAEQgdInUcwT9
 rA/w==
X-Gm-Message-State: APjAAAWGfOamqQf/SaQkOwLVTK9F9jkZ1jAyYODGgCGGFPgkcG7dBr05
 E+lKoIiJ1Rrxxdry9t8a/bRafA==
X-Google-Smtp-Source: APXvYqzYV9rQ44H/pk5Hsqy5s4BegMtVSBEUWtMyOkGlq4eqULoz1dX+pIF76eOAQ8TcrjSoiDL+Ew==
X-Received: by 2002:a63:5fcf:: with SMTP id t198mr7340060pgb.270.1568870926501; 
 Wed, 18 Sep 2019 22:28:46 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Date: Thu, 19 Sep 2019 10:58:17 +0530
Message-Id: <20190919052822.10403-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222847_390592_3545E802 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

ROC-PC is not able to boot linux console if PWM2_d is
unattached to any pinctrl logic.

To be precise the linux boot hang with last logs as,
...
.....
[    0.003367] Console: colour dummy device 80x25
[    0.003788] printk: console [tty0] enabled
[    0.004178] printk: bootconsole [uart8250] disabled

In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
VDD_LOG. So, for normal working operations this needs to
active and pull-down.

This patch fix, by attaching pinctrl active and pull-down
the pwm2.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index 19f7732d728c..c53f3d571620 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -548,6 +548,8 @@
 };
 
 &pwm2 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm2_pin_pull_down>;
 	status = "okay";
 };
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
