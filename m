Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A21F20DEA
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 19:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0tHhPFgMzhlBTs9NBRg8c2PLXJ+KS/QyxkYKJt8md8=; b=puOV3CL6s/fclC
	7lV+8X6Bjt2AM0ROiTycfZZInhQ1JmUtrIWI1/GPgn7nfrXyGP1ROZooG9aH4jFs/q1R5WsY8I/Ws
	Sct03arMFgQ+Pk6evOLAbKsM4zI68fXwmc7pXViGEKL89OCIyou/Pc7bXD+OYx37YyzQKIaJkyWIn
	19yv1Sx7oPp++pxKa1oL3sDJhoAQmX8mCXhqR/8lC/eBZaBQHUOMZ4ys7/L2S2OnC03EmiE2RqpL8
	L5j/4oXfaOsHmsZkKwNY95jTw7eZkm+PN32jUO++TlWCZIbqFpqd6O5WWxN80Nnfi9PlxC+NMXAkn
	511xyD9iP4qvLquVHJDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK8e-0003Fn-L5; Thu, 16 May 2019 17:25:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK86-0002aB-QW
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 17:25:21 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so1965138plr.3
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
 b=lm3M7Abais25GdMpfAmlFd1RXZxXFphbeQ7jGJe3AKBVsknHbMxhyrH4vT+MBb28A+
 xP4nQPC5QkLetlEYajhKUsKHtuJITm+LT9nnHbWlAddEHLklQyGCAK0zKonDIjCHRuRm
 n0incRdHOE8Y3OOvZzwBzlqIvRx1Z2ohANK2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
 b=Fd7yIWjsiJuTH0q1DrTaRGpT/7Oi6Xd27zpvo55BKmg4cnzg5Ghk5bnr0gyz/VKYSq
 VExvm149iByJCeGNdOBH+SPdpLJXtlQTDVLsDuK6I+M1FKOJQ37vYTr8pgYNgekIvzyB
 jYzXH/SJsJ1DNm5s1P1+KofGtfid6msTwyhpy4C1sjqD05AJbzOs3Zgu5F6Ca+u+h0tr
 L1OH8Q9gUc+mqDQjBs1E9ZM9nXm9n5qgSgyyf0Lh0f+BL/E5lclGvABw0hgUhkungQxr
 cs69ExwSVjgmoOvLOnoN7/iLpmWDgBI3MgmBbvvxhWquYmFzLe1PiE6aNtan8Twoqs/b
 X9Xg==
X-Gm-Message-State: APjAAAVgC8qRfUnuoYwRM6GAbLlgQr6DDlqKDx5vPbz3U/vKrbG4cF8P
 COsYOds3Q66SMqLnPIEXRTyCPQ==
X-Google-Smtp-Source: APXvYqzIUsVmhUrS26/6IMXbb7QozvzV4UhQf72EtAlcEOaL7o68fTla/TZNzSHlTZB49FW8iDdDfw==
X-Received: by 2002:a17:902:6809:: with SMTP id
 h9mr51869145plk.129.1558027518307; 
 Thu, 16 May 2019 10:25:18 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id s77sm13264216pfa.63.2019.05.16.10.25.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:25:17 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for the
 GPU thermal zone of the rk3288
Date: Thu, 16 May 2019 10:25:10 -0700
Message-Id: <20190516172510.181473-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
References: <20190516172510.181473-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102519_146100_64D34E04 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Currently the CPUs are used as cooling devices of the rk3288 GPU
thermal zone. The CPUs are also configured as cooling devices in the
CPU thermal zone, which indirectly helps with cooling the GPU thermal
zone, since the CPU and GPU temperatures are correlated on the rk3288.

Configure the ARM Mali Midgard GPU as cooling device for the GPU
thermal zone instead of the CPUs.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- patch added to the series
---
 arch/arm/boot/dts/rk3288.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 14d9609f0b15..988555c5118d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -547,10 +547,7 @@
 				map0 {
 					trip = <&gpu_alert0>;
 					cooling-device =
-						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 		};
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
