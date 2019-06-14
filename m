Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC0246C82
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 00:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdWY3+zqYVXkVy80kyzNC9L0TfuVP/O5x2rGoSNXjvA=; b=Q50MYE0ig95oHH
	TUHNk4xBVx+1XUYPeN+hial3ZcAbWix4QFr6Zhv3yRVIZNTlKkro/6lhXGRv4h3KDUe0m3ECjjmUP
	PhqZThPIaRAJuhSFI0JJLmH73heRqd8m+FxunbPxtOSq+q83xtTTHq5+8Kw3cVi/Zdsm4ZIQpFebv
	CWfxGhJwgRPNkEqB6GE+rflmg8ikijnS8fGdzL3oW2p7+hvGNOngX4CcIg31oJjNm4CnxXazMqKT9
	YhNKgHnEOCioVpxVFOHd41/TbNN/29fx8G0tFRGMX/PI1P/VY3AIf2yr+70T1XiissPEivyFd2cpU
	g70N99OpctZKRvuBGJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbuxA-0002Dz-ST; Fri, 14 Jun 2019 22:45:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbux7-0002Cz-6G
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 22:45:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id c85so2247372pfc.1
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
 b=E73CaugswLEoSnRUob/BsIpit8Tpx/hMYrnG1PMqIuPtY3H8B5BMGazNT5uoypDBWx
 osOLOrWmYS78KuZdurwrMG5aU1Y229O/IYHb/YcPh8YQIb9gbtbFQLqx5utdsF24L0cP
 CMPNavVjwHgO3gIr+WTWuV2HWsmZ2/Og89tlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
 b=g2V8P6P0CfKLI29BM51g/73K8Y7IXw+9MyTBrHyLUEahfDXbSlpSBZfR9BrflNW7Jn
 5Fk8GMhN2F68QodjkH62BCBIBAIWwyh2JMGMrI2oOClI4PfxoY0Wps0Eop/IqR5A3fbG
 faeTQZ/Uf0orNvleoevxm1lGvG4O+rvNr9tofdX1fkAESMXbctoFovzpczQxNjiUC+KC
 H1OLQfKjnE9dez54YNjAJwutBvglrs+uubtJOQwp5GwGEA2XiiMStWe++HYNr4F6Gr20
 Kd1+IZ3YaudYkyBpoOQFl2UHPN1BYP0vRVF8x5q5jZBGk7fUZcvaCtg3TKqB1OXo20Qp
 3s9Q==
X-Gm-Message-State: APjAAAV5hyiyXjH5+6UibHrqj/TWpAkJSqz7PWWEpCZzA0mduiLQoguA
 mqoxG1YVS/HflolNx7EffrnOQw==
X-Google-Smtp-Source: APXvYqyN12JRzQIV0hm4tLUoGW9KOz1B4YaxPa5FrSR+r+v1H8arhpYH9PjobRBRAWHrn53K5WiajQ==
X-Received: by 2002:a17:90a:37ac:: with SMTP id
 v41mr12841194pjb.6.1560552344085; 
 Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id x129sm4099537pfb.29.2019.06.14.15.45.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 15:45:43 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight settings
 for Minnie"
Date: Fri, 14 Jun 2019 15:45:33 -0700
Message-Id: <20190614224533.169881-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_154545_250208_3E84980E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

According to the commit message the AUO B101EAN01 panel on minnie
requires a PWM delay of 200 ms, however this is not what the
datasheet says. The datasheet mentions a *max* delay of 200 ms
for T2 ("delay from LCDVDD to black video generation") and T3
("delay from LCDVDD to HPD high"), which aren't related to the
PWM. The backlight power sequence does not specify min/max
constraints for T15 (time from PWM on to BL enable) or T16
(time from BL disable to PWM off).

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Enric, if you think I misinterpreted the datasheet please holler!
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
