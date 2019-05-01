Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F31107D1
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 May 2019 14:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hn9YnF55MDt7fEzfJJc+pxT5AY1gBgkvn+lkWj8XZmI=; b=Cw6QZf90o5rwfi
	NdSDvfn/GM4hiJyc5uyWiCH1Uuy6xhPiVDpbW9Ao40rcuj1LvGhZlk+NJfT9fuTSTT9Xeb+jOy2Cc
	yTJlTQDwOox/xP5TMhMbal3DjiYb+PWrmrnCY4Z3cQGTgCu17NPz+auycm188WAhxckzcI/la+vPU
	ET9SYxuzt5sebqqY27ThM4LoBXZUt36ogu1lymeMcrg85GE8tH1JGHRV+GNIyzbwl4aN704/s03C0
	5qCIVEfiDkno3IrXk2SAvDm3HWcU9SjBl25d26SrQp+GJ3LXwBm/HlrQxh2KTn2MR92XuTlXMXher
	sJDM77BZdQS3ubeM5yCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLo8x-0000k1-0N; Wed, 01 May 2019 12:15:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLo8r-0000jI-S3
 for linux-rockchip@lists.infradead.org; Wed, 01 May 2019 12:15:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id j11so8515638pff.13
 for <linux-rockchip@lists.infradead.org>; Wed, 01 May 2019 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImxxJmJZjyprEUOS1cjM4Ta2GXS4CI4CNxI78EJ27HQ=;
 b=BwOW8AiQot0lzdxqOFplQZcvP1cnjIsyBA+ciOZuAAZqCqvmuxA+r809VDSoc6Nxm+
 DgK9efe9hfbxEWRzzK61cZ9vBwUIZxJFiII9DwHZIJ8QD4wL5C+d0hZd/e6PY3TO6BS0
 kItv6s2QKpCPJF6QwRzs5Xaf0efnBpPc2hlNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImxxJmJZjyprEUOS1cjM4Ta2GXS4CI4CNxI78EJ27HQ=;
 b=rYhI9CKjqw3dDu1DUzQVl0sbyhTAbLwFHzBKNZVHC7ItjBIIEUy0qNflN5fvkd+vDG
 HWJ9mgpgCHApaJOgU/aa4/qdvFdyPJGCGDeixXrTLMiVzvxwXsxvNZkMCj8R6bKZCRVJ
 JHDfQ5al28eLoVhbekqDbLrp4nPupL322VaBm7U2HU2E74J1zeqGAljZzcqsTx5+bmy4
 K1opOhLgNwNwfbdiz4w0LPfKIlnLQ/UAXMsV7eBVX7uswLWEgWKCzOxTuAqyec/vCtmu
 GatLmwnzFlqg3doUO3xtxqmrliXS3rLB54fA/SWGZmn7EJWosL5w4mHAOo2CqaN6PduY
 jf2A==
X-Gm-Message-State: APjAAAUw89TzJ4kOp/JZc2Fe5wv0qpRCY/XrPGdIckqj0dLgZAnFASmX
 LMCl5LZcpBQF3s4oTk6iG5gRMQ==
X-Google-Smtp-Source: APXvYqyNB0l+GQo7QXQib2EIHiEhvT+0vDtje0/2NwWvm1V+uu1x/xfQ0ZhL3ZmGNupLIEaeNg+Zcw==
X-Received: by 2002:a63:dd58:: with SMTP id g24mr44137179pgj.161.1556712916601; 
 Wed, 01 May 2019 05:15:16 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.33])
 by smtp.gmail.com with ESMTPSA id e193sm71082978pgc.53.2019.05.01.05.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 05:15:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280 LCD
 panel
Date: Wed,  1 May 2019 17:44:47 +0530
Message-Id: <20190501121448.3812-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_051519_184482_C7DCC746 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt

diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
new file mode 100644
index 000000000000..67349d7f79be
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
@@ -0,0 +1,29 @@
+FriendlyELEC HD702E 800x1280 LCD panel
+
+HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
+resolution. It has built in Goodix, GT9271 captive touchscreen
+with backlight adjustable via PWM.
+
+Required properties:
+- compatible: should be "friendlyarm,hd702e"
+- power-supply: regulator to provide the supply voltage
+
+Optional properties:
+- backlight: phandle of the backlight device attached to the panel
+
+Optional nodes:
+- Video port for LCD panel input.
+
+Example:
+
+	panel {
+		compatible ="friendlyarm,hd702e";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 9e8218f6a3f2..9db3c0c65ef2 100644
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
+	.flags 		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
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
@@ -2634,6 +2657,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "edt,etm0700g0edh6",
 		.data = &edt_etm0700g0bdh6,
+	}, {
+		.compatible = "friendlyarm,hd702e",
+		.data = &friendlyarm_hd702e,
 	}, {
 		.compatible = "foxlink,fl500wvr00-a0t",
 		.data = &foxlink_fl500wvr00_a0t,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
