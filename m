Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C3FE4C48
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XUZ9xYeqQJ6qJWlXvrzCqeJBanOrR0+aDZYNELiCZU=; b=gc7UzQxtEu93cb
	quWyf8KcZTd4nK3fs730Azlw6TKGQto4NtL8ZX1jtCxqzwJ9lRSFhJqH9QRdiLVHCSNjqA9J7/mSR
	rEnbZARZzZyy7yOzacbHTIPIcp/shDhSBNij0wScZsT6isHUDlLP8sj2phZxlsIzxFvtxsvMHGxF+
	15j9/TBY7DBWBQGFpmtMcMG/gNtnUsaGQYUDsj4WyhENKgo7XdHKVJK9H+yaeZRkpi0Vvvaf9gN4l
	6NAG91ChffzSDOxWS7dELzCDZ5v5plXYbY7dHjGNXJhIfmUhOxCpmbaXwV3teakxp7bF7USwzkBfy
	kJB40/d6U17Krm1YvA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzhO-000090-62; Fri, 25 Oct 2019 13:32:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzgV-0007sO-W1
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:31:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so1591821pff.6
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oNSnTAXUPLhOggYZsXmByzoHissc2cQrcW1ijnP3ewc=;
 b=cgKZg2IA8rLE/Gb1Fea2/UKtImFx1r+3/oLrUJKGJkgq3mqfzGP0fCzY87EqP9S0+0
 WQXRy0BralqXwRQgIPwF2wZyUs5/mIyBfACB/94kBYzmDeud7Zq9bMrWbAL3xy6flbQs
 pc4pHa+WCeiKDem2XAefpAmHZf6J9Dozhans0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oNSnTAXUPLhOggYZsXmByzoHissc2cQrcW1ijnP3ewc=;
 b=eypKBt1vRixpkNqDX8RjF52wWBOfN3ortOj5FIaz2Es4YWmiOI0k4AEaXNfIyrY0lZ
 AhldXZFlnk0ayX8qP4R0LCUp3NLEwHqIM9JaZSTHKJzTzTkGOAz16CP8w/lGPtxUZKQ6
 49StKti1am/jRCGHhMOLNDTu+AfY/UxBz9BGlL9VbCONZI6EairHfDYg5N3e6FCeo4u4
 35Qlhnp34F7SyA83ooJx2UuaukbZG0j790RAUtl15GBBjMNJ6rA5NOnE7MDuE0TMRVtb
 hpiqaQ1eMc99D1RMJ/RJvKJT2Kotfue20H8HXnfoj+a9rOvJ2cmOsB/K0R+Mq6/mKRS4
 8jqA==
X-Gm-Message-State: APjAAAVPLcuXbSrfkBkQFeaILR0wYDs4plKkZdUXBFxR8IBaP5AiBq2e
 ClF5eXGGqrufb9NEJM7lh4b8LA==
X-Google-Smtp-Source: APXvYqzbwsXWBs3ky/vHamL+ysr3yMSuWsGovFl/YV0ZreeaOiOp90nD6ACzcZJAlWwB0QQOpZKsVA==
X-Received: by 2002:a63:4525:: with SMTP id s37mr4571578pga.148.1572010278731; 
 Fri, 25 Oct 2019 06:31:18 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id y36sm2379120pgk.66.2019.10.25.06.31.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:31:17 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
Date: Fri, 25 Oct 2019 21:30:06 +0800
Message-Id: <20191025133007.11190-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063120_264274_102BD430 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

All boards using rk3288-veyron-analog-audio.dtsi have HDMI audio.
Specify the support of HDMI audio on machine driver using compatible
string so machine driver creates HDMI audio device.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
index 445270aa136e..92ea623401e9 100644
--- a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	sound {
-		compatible = "rockchip,rockchip-audio-max98090";
+		compatible = "rockchip,rockchip-audio-max98090-hdmi";
 		pinctrl-names = "default";
 		pinctrl-0 = <&mic_det>, <&hp_det>;
 		rockchip,model = "VEYRON-I2S";
@@ -17,6 +17,7 @@
 		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
 		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
+		rockchip,hdmi-codec = <&hdmi>;
 	};
 };
 
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
