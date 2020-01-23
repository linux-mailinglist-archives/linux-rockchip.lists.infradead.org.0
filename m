Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E80014697F
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 14:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+X2s51WjeGjibWTpHsRXvnxQ1tzTw56qkNX0cB8V3pY=; b=qc8MUG9YSCTs2c
	FXdP60cYjwwSVHhUp5D9QAeD1Q4ZQA6vYrOgLpPEpjaEwmeh2RLqS39D7h5OjpVvYUI7kH94w0VJO
	x20Ra2Tu8QNj5xGfhbsaX5sLeh21cH56Ve9z1Kc3iR8DxGu8Lkf1PVk3LqprroJrWL6XYEXvVWqHK
	jPovAGyA+JCYyK7BjkXNkncKQmlOtdlPGXFUYsLmbw3/YG17rffzXAdao8ZmSSOFMuiE1HEOY3Gmd
	npn6tXyWuu9sMSky9mIhMSAnwi79nb7RnrbyPHOlFToEYY0lSFR0sIEpUslyS2hGr3wDjXvS8R3JA
	8v7q/TgI6BJPc3cuhN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucpA-0007qV-1z; Thu, 23 Jan 2020 13:47:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucp0-0007gq-8D
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 13:47:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id x6so1560732pfo.10
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 05:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9msSGB05EOD+TA6th1Q6DasshXuxXMHpgfWWmoqkjG0=;
 b=hZX9mIAIy9GMqX4umkBL4JNLBU+ujofWPQPTjEzBxMgbIXIeaOfAKSsdtbeZnrdA0k
 F5BDTO12rEh1yXXRYUf5lsWCuv2k2ccVWkLwJj4BwoZR2KwX8X/ldOW/lMkvGcIDwI53
 0vwA/U7bw6xb90SZXS9aghijC1mR8gmMGzmqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9msSGB05EOD+TA6th1Q6DasshXuxXMHpgfWWmoqkjG0=;
 b=ZsrB58fTzhlyKLyCnUYaCktzXgqcsN7bjcmdI9H1cpgDD1fEWJHyCsMGDmmk8PUuAs
 MOibq8VBO0s8VeF66lGIfqSuxR6EOQ+710/6N5YJtr4RCNtUfmfbbjYiAiMQBVzDhviP
 ENLN8BORODaPR9Q+zpewK9LZNClyRzHkzgQLamIIe4xilxMrhZsKyuTn89fJ50u0EY9V
 UqUvz1rd6kEoUwMqt/o8FZw4SSt8oerc1QcGKX6EjHCGegYgzxtY/+sE2WDrOFceYR3B
 6R9G6rJwghFAlpaxYuNqqCJQLRQvpBesp3Z1AJHQ5HvJaZkgvLgwKW5AV1m9BJr0+qo9
 MFfg==
X-Gm-Message-State: APjAAAUoCmEiV9/K43ToFdOIhpyTR9i9oI4vyPhpwL86jIJJKFu71K3S
 bCRjK9+WQc7nqJznQtgGjjgAvQ==
X-Google-Smtp-Source: APXvYqwu4dqBx94o0ANFySalOciPvjf6FEO1N1R3Ni57uQ4X5UqK6ImkHDTPh2JeP71b7f82/fpnUw==
X-Received: by 2002:a65:645a:: with SMTP id s26mr3928042pgv.321.1579787215201; 
 Thu, 23 Jan 2020 05:46:55 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id a10sm3119275pgm.81.2020.01.23.05.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:46:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Fix vcc10_lcd name and voltage for
 rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:39 +0530
Message-Id: <20200123134641.30720-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054658_703080_32C45175 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

According to hardware schematics of Vyasa RK3288 the
actual name used for vcc10_lcd is vdd10_lcd.

regulator suspend voltage can rail upto 1.0V not 1.8V.

Fix the name and suspend voltage for vcc10_lcd regulator.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97ddc..d2f79e5bee87 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -286,15 +286,15 @@
 				};
 			};
 
-			vcc10_lcd: LDO_REG6 {
-				regulator-name = "vcc10_lcd";
+			vdd10_lcd: LDO_REG6 {
+				regulator-name = "vdd10_lcd";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
+					regulator-suspend-microvolt = <1000000>;
 				};
 			};
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
