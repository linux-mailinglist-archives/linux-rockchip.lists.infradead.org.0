Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0478124D6
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtotF3vC+lV38SyOa2Zd87lQw+7/IUbzQ/C69156mo8=; b=dJpvJ8YOH1zgx8
	HoQcWzxWUUYdxEzRAz65YfPA6lFc5jyyYgieAyURB7VS3zpSfiJ6+tYX7s0R+Fb0pihw00D8bG/re
	T0Q6Hj6fEYiQXjX2GB1pcyL+uPhV9pm0u/NeQI8iQkfifPOiQFqUz0Kw2qOUjNGChJWPyG5Lz/X2r
	Ch+kKUuDVgZ8j0S/MuWYrl78HpgkEOs/J5LoJV5zs/rmNeAnX1kE6wdtuUQaKvTddFSJJHYuA7RUV
	cfGn/ie2wozdZD9Eyitwkth5iZPV/8rgcK0nven6ZIEMqWlCyWNOlcvQh+izA5m/SyobwBnfyiamo
	C7lXLW7uydIfOoyEhreg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKbc-0006Dz-RX; Thu, 02 May 2019 22:55:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKaz-00055t-Bq
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:54:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id 10so1858901pfo.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
 b=VgR98wkKNANONfnbGrr9lcgFpOWUbpb8QW082Rc0rd/NK6ECJCvh6hOqvAFNGLwSuu
 a8kF9gsAk1gebx8VNGwe5TlF2czJn/t03cJrXt1krC8478dvOLahHngkZ6ZhXYl2ShXg
 ySGidUHXGZuJTt2LfafwCVBx7w9d6c5+uFKhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
 b=r97q25c/N9/7ivpnfppnapviUkXXgWWXqzaTRq6XjBI8UWcXVgbtQn+H0AalqmzypF
 i0dyXrPu59Kd3HLPM/vpPZW7W1O5v9MrzY820weIfljPARiiZXOgFV2jCiTYYJAEBCfE
 33s4Pp5jBiHYqdCrp0V8bH0hgliN7cH0ryLXAJn6lYg9pvRS+oHgyoHjcIoBqxiuGHy8
 hbX0CjFTSF/y0HLLEhQG6Ke5CoM9uDZ+4hL9kV1rQh7tPm2SG6JtBmo+vKb4r6R1rXRp
 HB4iw56X6HFD7cOd0t5jxHKIz6uvf+1zXHxpIUmQn3eiC5kuJOJQ5Mw9vATVPJaYPERr
 a57w==
X-Gm-Message-State: APjAAAXtAK5hOkFhlsNXLsKsXPBh0VcpbdZoS4ISqhzKGM8yDVg/nFxm
 tVoXMgf0Kpi+XHUSmUDPQ215Fg==
X-Google-Smtp-Source: APXvYqzTiOjbZQBE1y3q6em7X3hoV/eO9e264Ryqoxbr49JQ0+yN737erpxGaSnUtNHQVlpHiZsYFQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr7040966pfw.172.1556837668900; 
 Thu, 02 May 2019 15:54:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:28 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 5/5] ARM: dts: rockchip: Add HDMI i2c unwedging for
 rk3288-veyron
Date: Thu,  2 May 2019 15:53:36 -0700
Message-Id: <20190502225336.206885-5-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155429_640809_8CFB4622 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Veyron uses the builtin i2c controller that's part of dw-hdmi.  Hook
up the unwedging feature.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e1bee663d2c5..340b276b6333 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -163,8 +163,9 @@
 };
 
 &hdmi {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "unwedge";
 	pinctrl-0 = <&hdmi_ddc>;
+	pinctrl-1 = <&hdmi_ddc_unwedge>;
 	status = "okay";
 };
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
