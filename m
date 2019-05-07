Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A711643A
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 15:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmFYRL784zXRC3nZ6mp0jNz/LnZ1l7RPofxzfkEbxgw=; b=om6UpS1n1COkyD
	Pp5gVsds3kANah6aO1Ii4TLPVFFaDqzJLyMKhGZk5I4yKeF7v4tflWHYO2eZkFFM7kxCNKKGvZcxd
	hX8CL8rPdpsV17n3YWX3B+v3KxtSVV8qHXX+i5EKHoOr9UNAQuJfXU8IQ+8eAO4FW4Cy4vCXiTcTs
	ekEoo6YNTAI1RfoxIIJJxbE6Obllif9yOFoSgJN9rp1YuteIHM2TBG5U3lcdcTaiXFJubw109n3t9
	K5QZqbdPEAi6HNtFUzZj0FhcMsIftla5rEjv8qb65LiB9qHy9zjt6FLVsdIQP7DmQT7iomOgG6uEj
	Ru4Ps5xHUj2Wl6pCij3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzor-0000go-Vm; Tue, 07 May 2019 13:07:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzog-0000YO-AC
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 13:07:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi2so8165123plb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
 b=jm+TvJfNFt6JoZDpIcsdQYCpeFYqOblkOGI08ywsGy57x+8/bmkSF4Jiva803NbPKE
 s7m5WLd6gfL1+tbGQjSyYmf3uBgqOudNS4xmd/KNNKzha6oI95GWuIDU4syC1mQ+66W8
 lrUJaarBqXPhwdumssK7oXfiCQKiWLW3S0Kas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
 b=MOg74pVQZ4eFrkdwEeBGQoR75Qebhl3pgZEcIwJlmJahdSv8NR2pL2GsrHWkIf5FHX
 vZFZQ/yDx+iL5W4D6TzvgWJPUuZfWUp/DA7TdgajmMvpwkXt1OIKHBbjHMr4Bkn5wt7G
 QBs/LPGVWkQHV0us504xvShUr3moejk9oAaEiASpM5UCVyaOMs7/A+Jo64FLGtXk3pKa
 naekhGNswSXscZL6odC10sxyrNkIXjWCJKPA++jnkeA8yR4cQ5IW1k/eXIwdRR71wLTu
 zTIT0U9ZwSLW4TN19Ab3FotixVe9727MBShJFBvT59SBKo/c3i4aBAjSDhzby+M/hDcR
 3QVg==
X-Gm-Message-State: APjAAAUOPLmzINVGNc9qQrf6QJd8JoFEDgAcszfIQATpnGG+fcFIWtq2
 JOqMmdu5SqHCdT7oZXYwOv6orQ==
X-Google-Smtp-Source: APXvYqxTNLStKgWqhFuYnzLAEpQKZaTXrhsWJy7MmuW5PcblTQp6f4JovNxg5jyNfUeBBZ2VP2/bHQ==
X-Received: by 2002:a17:902:2a:: with SMTP id 39mr39639547pla.64.1557234449180; 
 Tue, 07 May 2019 06:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
 by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:07:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] dt-bindings: display: Document FriendlyELEC HD702E LCD
 panel
Date: Tue,  7 May 2019 18:37:06 +0530
Message-Id: <20190507130708.11255-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_060730_359618_878769FB 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add dt-bindings documentation for it.
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- separate binding patch from driver
- Add simple-panel compatible as fallback
- Add text info about simple-panel bindings

 .../display/panel/friendlyarm,hd702e.txt      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt

diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
new file mode 100644
index 000000000000..6c9156fc3478
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
@@ -0,0 +1,32 @@
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
+This binding is compatible with the simple-panel binding, which is specified
+in simple-panel.txt in this directory.
+
+Example:
+
+	panel {
+		compatible ="friendlyarm,hd702e", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
