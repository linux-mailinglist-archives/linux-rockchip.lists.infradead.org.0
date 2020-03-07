Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CE17CE78
	for <lists+linux-rockchip@lfdr.de>; Sat,  7 Mar 2020 14:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lCpExFhh6zf7Pw8Q+zfU+VEO9dBsQ0g+KJFNj6HR2+I=; b=rJn
	4h2JzZRq0vDAZlGeK243/Yq49Qg9L5uMVBhf4OEXQg+0fdECw6AV4XMJwt8xZOQqz9fYdr3C431Lo
	Fad33esSJmhLSYWnAMKwaAVGvvnlbwFzmtRUcxAQKdW+A13bvMHsVaHvtZA+qkOoHDcxbuppAl35P
	0bNBTOUGduOdEbHCljgQnQGqRn+FqJFWDG7b/jiifgs6ge06GHO5yJ2Txu6OattLaToN17dXd/42B
	/vjXLinabZjeoKDceZ/VRM3TYGZiBVGO5l1VZnM8BdmleQbcFqIkH+mmcZOD+SEciHQXrBaPSouOT
	bkrAmj7NiIxy3YIaoZtBmEuai/5Xrgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZpC-0001OU-PG; Sat, 07 Mar 2020 13:49:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZow-000190-1u; Sat, 07 Mar 2020 13:48:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id n8so1367741wmc.4;
 Sat, 07 Mar 2020 05:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=VLve4QZOuRtttmHJksSXthYkxNJhElAvXQoUiytCJzc=;
 b=FlXZIfiEIWMFhEVLOL5GVMFzGCcwtKgnQvfyeO8sq9XM/RyhZ85+CcrsY6eYOLr9yn
 Y+nemzpqsAvWmQ1tAbhbvfBeEU89TfTXfjly5SlKt2rdqf15qv0/z/risXb78S3NB69s
 A6uWtLhx5A/zaxl6k+XIdpj2ET77JgsUTZ9gkxaYDrVlIyliS+Ct6ZamdAXUf+xRrC4F
 XQ8EQaTEVwUwjEwdcsWjHGyqJ26+YFHF8HHIKTiLlDWzQRW7OgX1FaHS80FgawfiwJ7t
 IfkOiAETeWYfwbIMz/aHZDi6kTGIAmF3jzJ9ezdpmwe/BvLHymWiRxKxZ5EEXZDIrA7P
 pXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VLve4QZOuRtttmHJksSXthYkxNJhElAvXQoUiytCJzc=;
 b=mNiD5hYeW3ckeemuQC3xWvpxbQCgtfjzrSZf/ROr/PAR1Ln46Azost9pOlSl4FRvxk
 Hh5IoZN3pj4/AVA5ZDZ6vwhHuW9poE1gwO5IS9ZFt4nTrncDQnzqAi1EUL32miVouXYw
 Lu2uTzQoWPlVAZyWqxfOy4Zb/nBvN0iSPBuPfJPhwKwgyR04oV0PoqU7pOGkHfHUTbB/
 wSzirEnAj2C2MutSpxP521gbikMuShOW0KB9QmHyiUUqSjmkfUnEEFzUHB7EE0OT6yYm
 cwaIQ8RzgTfxW7jINbEJa92g2MhochCqWX+3wnP7c7a6LUB9Syk+OW9g0uk2OHmOpoOF
 AFqw==
X-Gm-Message-State: ANhLgQ0ZOd+/+gjZjsnoKZkhmbk84QH6Guo2fcWuDu0V7k+ZV26h8r+B
 M29R1yq0Oo1X+wWyST79sd4=
X-Google-Smtp-Source: ADFU+vuvl0cB7rvIyFZU3kahKrREdwlXP94ms7tqOWI9oFHrGV8FXQBxgtWGuP/NMjg+U5a2Yv0tGA==
X-Received: by 2002:a1c:5fc4:: with SMTP id t187mr8224185wmb.81.1583588928440; 
 Sat, 07 Mar 2020 05:48:48 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm11767265wmx.32.2020.03.07.05.48.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 05:48:48 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/5] ARM: dts: rockchip: fix vqmmc-supply property name for
 rk3188-bqedison2qc
Date: Sat,  7 Mar 2020 14:48:37 +0100
Message-Id: <20200307134841.13803-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054850_117134_0EE6176A 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine rockchip-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: mmc@10218000:
'vmmcq-supply' does not match any of the regexes:
'^.*@[0-9]+$',
'^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$',
'pinctrl-[0-9]+'

'vmmcq-supply' is not a valid property name for mmc nodes.
Fix this error by renaming it to 'vqmmc-supply'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index ad1afd403..8afb2fd5d 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -465,7 +465,7 @@
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd1_clk>, <&sd1_cmd>, <&sd1_bus4>;
-	vmmcq-supply = <&vccio_wl>;
+	vqmmc-supply = <&vccio_wl>;
 	#address-cells = <1>;
 	#size-cells = <0>;
 	status = "okay";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
