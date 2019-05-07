Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7DA16439
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 15:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxn3999EA23PFVahbbnpYPAtOKUh6tMvuECnZD+x8W0=; b=od4ZOdeNQz3HiT
	2nNSsr3rHgWIbmxwPMDocUPwFDTcKSOXFHE/1+wCJb2N9b7DOM8YCM4t3cYd6oOmTBQDwBuPgPbH4
	ne6IAj4XWv91S9bbKElQ/PlRzItz272Ib6ABHzI8OV8A8XHR/pFyXnVYkW8H44JxhrJv8yKZvYMLF
	uBgGqQxeoDoFTIOTBPlxHiE6YaKK/otFgxEID7rVrW/iOnIRGl+HY1JSHA+RSqVSRQ356gotdvsu0
	CCtLI0OmQBkMlabkcXnxdh0Aa8RH0TP1q7hF1yQ3gEyKdnkLDmyjfPIEohRNii4karLEsAlSzAlvJ
	zV2O7yxHsaNVPsDqXy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzot-0000ih-D0; Tue, 07 May 2019 13:07:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzol-0000Zb-Sd
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 13:07:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id z16so8279709pgv.11
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 06:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oYIcefqUbtjO6efG05qDKL3HAKUE9dWz26q5t6PWQVk=;
 b=edyEPa62/tqOK5yYOgIKFbrNm5HJFRdrthDyG8k085PwYA7rMARCaKhtyT0spUv1lZ
 z80r7mktww84mBSrnXqBVlE03aT9WMA4HAZ4mqg/i8fZ1NPa02rZ+dxElXpGI3svX4yK
 Ag+W8uF1vfH5vDlvlyHmywP0gZ4a0qKxq5iBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oYIcefqUbtjO6efG05qDKL3HAKUE9dWz26q5t6PWQVk=;
 b=VnkSuJSFGCXy8MA52naASdGHbFS/iiB8MIh+evvm6GYdEF8RnTYcvuyAtsFJbF3W1s
 TG0wn+42Tt8KHj4MnDCtIU1ABULgpqsvEaLzV49LMjydqO0c2JbJGmr6bItEfQ2utILD
 +uwBJt+AM11knhBbKqfJy4HAwGtxOu5MqExOIYM9HUt6xijnujANQNWVIVR+abvyVBYR
 TigNl6QFzgqCkQNDwxtopBTQB7jOio52xLM9pFcNFkFta57I4cdqM85FgUJGXAKCkkna
 ec/Ng02NAawPGvvPI8OjWTLIqSvjWN8DbO2vXN+354wfYTQCC1qrLLXD0uiwpAsWME2B
 WXhg==
X-Gm-Message-State: APjAAAVRst1Zu1rLcoREq5xttaHnWIkTvq7DpVQoxrwL+0Pj7Da6j/+h
 +YGbCJwQlVj4fki4VaBTA/0Awg==
X-Google-Smtp-Source: APXvYqy2CKkQ9wX0prpKV/pt24cFsadXZXvMcaev7EfdOiJeDL66Kfub6iLEmQkBCbHk4BdoBKJpNg==
X-Received: by 2002:a63:fb56:: with SMTP id w22mr38503539pgj.354.1557234454717; 
 Tue, 07 May 2019 06:07:34 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
 by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:07:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
Date: Tue,  7 May 2019 18:37:07 +0530
Message-Id: <20190507130708.11255-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507130708.11255-1-jagan@amarulasolutions.com>
References: <20190507130708.11255-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_060736_147936_27D890AB 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
resolution. It has built in Goodix, GT9271 captive touchscreen
with backlight adjustable via PWM.

Add support for it.

Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- separate it from binding patch
- sort the match id and compatible 

 drivers/gpu/drm/panel/panel-simple.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 9e8218f6a3f2..93274e270663 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1184,6 +1184,29 @@ static const struct panel_desc foxlink_fl500wvr00_a0t = {
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
 };
 
+static const struct drm_display_mode friendlyarm_hd702e_mode = {
+	.clock		= 67185,
+	.hdisplay	= 800,
+	.hsync_start	= 800 + 20,
+	.hsync_end	= 800 + 20 + 24,
+	.htotal		= 800 + 20 + 24 + 20,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 4,
+	.vsync_end	= 1280 + 4 + 8,
+	.vtotal		= 1280 + 4 + 8 + 4,
+	.vrefresh	= 60,
+	.flags		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+};
+
+static const struct panel_desc friendlyarm_hd702e = {
+	.modes = &friendlyarm_hd702e_mode,
+	.num_modes = 1,
+	.size = {
+		.width	= 94,
+		.height	= 151,
+	},
+};
+
 static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
 	.clock = 9000,
 	.hdisplay = 480,
@@ -2637,6 +2660,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "foxlink,fl500wvr00-a0t",
 		.data = &foxlink_fl500wvr00_a0t,
+	}, {
+		.compatible = "friendlyarm,hd702e",
+		.data = &friendlyarm_hd702e,
 	}, {
 		.compatible = "giantplus,gpg482739qs5",
 		.data = &giantplus_gpg482739qs5
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
