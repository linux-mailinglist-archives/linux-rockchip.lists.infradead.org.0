Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072C54AA30
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 20:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vnHOrOSHoVh6cTB04YHgYhYtyOOD5tJlECAWi7b5gbs=; b=WJWG74ZpmmL+ix
	SmxhNQUkkQnbLBuZcqdzsChDznLSr04jK0BERPWCbbTCifwYtEbdIs17AIlcBjLYYF+8cnPNeWJhU
	aW0KW5G2GdrrcBs7MxZxWWImdvTF8oAIoDW57/S1Zw640JSMzU0MySDJP322G/A60bLdNwRQdrOIM
	UaoiVJ8MItOmaqzoczmWzbQUCwGtK1o6FNeRoa5RIsGZRdUB1YESUZuqTe9Ndpxfv45dq8JjJl67Q
	xclM76eOEPn05RNGwjjPEKpQ850Yqo+RUvhy/GUtStoctxwXd5y843MpAXouHmnztbvrtlQUru5UG
	qsJQkgzNy4o3RqkdqWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJ78-0004NH-JT; Tue, 18 Jun 2019 18:45:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJ6v-0004EY-AW
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 18:45:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so6076935pls.6
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 11:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jQCPKFxQyeSljUm6aB/gqdIOd3dtcUj6g8UhIWN1Is8=;
 b=eTLQc07PucKs+X7BOPweNGE+V+Q9FmEWSs8OWmT7a5cmubwmy2LVuja1aiT3ZV4mYe
 AYCQ1hHwNCGgGe2HNK41ICyUFLMpjAswoA9BVxN2YzEGiQPBBscEQoZyQKGhIb+JoUAp
 BHwZBRhCBo6lonJBzzgVZ9OHHuP8THWAtX7Cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jQCPKFxQyeSljUm6aB/gqdIOd3dtcUj6g8UhIWN1Is8=;
 b=PwqUgDsCl6PDcwX0T10ilQlP2lO0iCW5gIeQFH2EUPqA3d394adMDOieCjl4gGybLQ
 KB+cRRwUAWy4gFjRycLjnGlbY7HlbnbSA2kG+nsCeVpB6xm9yXlAJOSeJzDRxao8/4Uk
 +8r7GpPp4f5uWxAoa/cEXXuuMUkyWLJDOCNnTssNgoSgX+FyCuCuxKmI4Hj7bzjx8ekw
 UrwA7QZRakqoH4vwUA+UVE9aI4Vq6l271ErbcODVkDimAIXggYPX/dmD5TTvnBg+1+hn
 SW90F0VuaHu/6E03Z6g1w2JVXnmeoq6ySREM1d1QPNFZnwedzhuBDRyrQr1GZ12U1ozc
 t3Ww==
X-Gm-Message-State: APjAAAWhvVVhNSxqunR29TXBUW1SK+0Abv3DzlPZwLyRwHla94hx/nXl
 VwiohHEvQiSJmsLjUQFs+BAgkg==
X-Google-Smtp-Source: APXvYqzdyMQm5ebsWKiLT9a2PALu7WQE/3ZGEacfk5lHvzhAmUbdQoYOrxUvz1QdNdOGzC4K4Ppfkw==
X-Received: by 2002:a17:902:e282:: with SMTP id
 cf2mr93052072plb.301.1560883536360; 
 Tue, 18 Jun 2019 11:45:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g1sm847758pjx.22.2019.06.18.11.45.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:45:35 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Date: Tue, 18 Jun 2019 11:45:31 -0700
Message-Id: <20190618184531.1137-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_114537_357635_031DA6CC 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, Pavel Machek <pavel@ucw.cz>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.

The commit assumes that the minnie panel is a AUO B101EAN01.1 (LVDS
interface), however it is a AUO B101EAN01.8 (eDP interface). The eDP
panel doesn't need the 200 ms delay.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
Changes in v2:
- updated commit message with details about the source of the
  confusion
- added Enric's "Reviewed-by" tag
---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 468a1818545d..28cbe07f96ec 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -86,8 +86,6 @@
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
 	power-supply = <&backlight_regulator>;
-	post-pwm-on-delay-ms = <200>;
-	pwm-off-delay-ms = <200>;
 };
 
 &emmc {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
