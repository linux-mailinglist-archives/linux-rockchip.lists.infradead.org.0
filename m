Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFF225AF1
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 01:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yhsgq11g6FwkSXcDDm6x/gkrSI5+EdV21Soq9ivS8V0=; b=cUdX66L1Wa13Pt
	JtGSTLT2C0pFwV1qiNT9uVNEySm21QQlU1kWKPcCNuau0WpfReW1egRyvMF7pOHKPV47iu7SkPGUE
	xcCodFyGPgayinXzUTtERYxItmLX4kQXHbdMZ4wKjQ7SbCwrdTFU/O4sAphAacRr1csDqLOb7yMxb
	vRopvEylxW+7AHbya+TTONrtMPqgbKBoMy/DedYzDJmjckF8YHQXJlIW0DMex3IcwnMX213L8jdSh
	89zU5V3SnwkQoWbC0gIqyScLX+P1zJ3GePDykIawysjCWxH75uw4dE5mhouEKgKuDWy30V6PdYoMO
	p9AC6tbV8Dm2oesjTJaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTEWN-0003xV-GA; Tue, 21 May 2019 23:50:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTEWJ-0003wW-Pv
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 23:50:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id 13so265067pfw.9
 for <linux-rockchip@lists.infradead.org>; Tue, 21 May 2019 16:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
 b=PgFRHz9LTKAW06xheSlCgmaBYlHudfTzK+hJD9m+hf4w8jZW0zxEWlzYfdhjW8BoOz
 sDx93ktSy6nK4r9e0Z/eFmV3NlH0dxZppw28/hubD1RTw5WFELEY0B28z0t71MVdkawX
 tofgt+pzOVwVuSxr4zX7Kr3vgG7xf/Uf45AW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7q0PelwL9bKMV8j6fotAmIIGWuu5yPxHabkyZucfWSs=;
 b=A+ps4aUap+HqqTN9deXcVKmcoi8Isf03STtf2+JgnT+Y5+CwvjjwzrvoMZmFpt0zYr
 yt7jQsuNnVOpEtfT3frAcevqCqDTOucZhMPr1Hl5XbR7I/f2+4N5Qy4iFIjX7tnnUoWa
 ARJGJ7KMpL4rSHu/19mBNxcxrYG3U2UywYOMioyO8eOJ3Yv2IW2BOkXtexlKknQILj/j
 Frck3CiQPIFsFkBiKG7TK3FGRFubdn937OWyPvqOz9ocmau48/FJ9IZAun6uR6c/hP0U
 xPlGnbhryBpqirVcF59E43b/hNk1bF1m0B0LptN9KPImLHiESUyJZH0b/unMoM+pVBzg
 HzdA==
X-Gm-Message-State: APjAAAWFMQkjuG5Nj5BgKJEIw8HmtbDbx2IPqm7jC1qkhell5LmEtBSL
 A5afcnjLHtJNcNvvVv1G7akqQQ==
X-Google-Smtp-Source: APXvYqyw8kaeTYK/TiQMeIZGSd18nYuR1FaVotEhqU23R+CYW+qg0qbUu1Ce2nBjA7PX/xVkt40Fqw==
X-Received: by 2002:a65:64c9:: with SMTP id t9mr85741782pgv.221.1558482608692; 
 Tue, 21 May 2019 16:50:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 194sm19955605pgd.33.2019.05.21.16.50.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 16:50:08 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Mark that the rk3288 timer might stop in
 suspend
Date: Tue, 21 May 2019 16:49:33 -0700
Message-Id: <20190521234933.153953-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_165011_860965_B5F36F5B 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is similar to commit e6186820a745 ("arm64: dts: rockchip: Arch
counter doesn't tick in system suspend").  Specifically on the rk3288
it can be seen that the timer stops ticking in suspend if we end up
running through the "osc_disable" path in rk3288_slp_mode_set().  In
that path the 24 MHz clock will turn off and the timer stops.

To test this, I ran this on a Chrome OS filesystem:
  before=$(date); \
  suspend_stress_test -c1 --suspend_min=30 --suspend_max=31; \
  echo ${before}; date

...and I found that unless I plug in a device that requests USB wakeup
to be active that the two calls to "date" would show that fewer than
30 seconds passed.

NOTE: deep suspend (where the 24 MHz clock gets disabled) isn't
supported yet on upstream Linux so this was tested on a downstream
kernel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 171231a0cd9b..1e5260b556b7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -231,6 +231,7 @@
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		clock-frequency = <24000000>;
+		arm,no-tick-in-suspend;
 	};
 
 	timer: timer@ff810000 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
