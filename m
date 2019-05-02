Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348B7124D5
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzfJCcSTMFIe2K749vFwVX0S3cvB7OqMVI4ncLaGZKM=; b=Pr/U2z00HCsrqy
	wja2H35JZkYIh0sW1Ud2bNq93hF++RLZjFza49EIKuwerNCeazyYFM1a3z8rea6ZB1pn9E8uzCEJU
	WzXYjFQOzJIa4Y0bA3byekWcThJCjOBAGQxAPhlatIhcYpEWLFgntYXaH5dS8UD1T2rBPNBlDCabp
	Ir1S3JSjzydIce+uXvHF5ifvMWT7/frhYkXb8Hb1t3H650z4pRvlu/doI6veWto2yyf0i8COMQMnd
	im/iOvpcU9FNEJwrKeAxsqOsChFlYn/Y9aB//M9m5FWUV6phw8lGoaDgSH64IsAkcObY5hqzHoOUT
	+GqU+duYsw2RuFR2lKsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKbZ-0005v2-Im; Thu, 02 May 2019 22:55:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKay-00053z-Ay
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:54:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id l2so1702127plt.11
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P+ZPNiv5B5kytob2vOwdU5pZyvzNXPIUr8ZUKGFUcOY=;
 b=h0wYyVMluUVAdv1NwQOAAhlwteWpgYwW8HXhS8VG32Z7Lf9yxA4NuF5+A0czBvZzKv
 lJVcxHPaPYIKXirJmLKL7liFbEaF4geinpGCsaSD7+tuUJ31PO4yA9oJQyZ+bTMX2yqH
 davXBEyebjxtzyIeeIKbXwcoU9AzTCZef7yaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P+ZPNiv5B5kytob2vOwdU5pZyvzNXPIUr8ZUKGFUcOY=;
 b=XVLcWW/3KVoCXRm7MsSI7v/DHASicrMXyqvdSa45IgkMToMuE3CDS7OsBkhzoL8EcT
 oSXZsh0MHcqpdCiMaQBb43z/+dLhiULyaSrzM0WOg3QekeI9Dxgz2l8dIb/PYc2StYeD
 J3TGs12U14QQLi0jApTu46225Zt/LS+Nw4ZU2E67MJ3JhKWPKCwgZpKz8o4M9O+hrwSa
 NeM6xKnPoSlEthjID5mOZoFyP7S0hqDTXhAXr7CDu0cOGIx74opPAhyq5ivs5yDHhFj4
 hYWn4m9vMdZS0WZXDzBs7jgmuleEh2z7SEn/ZCiCpIAmG+XyYx5iaAo0SXJyGaeuMMgV
 Wliw==
X-Gm-Message-State: APjAAAXGpWprTQqBXgmAicGHpPoJqCJ9cBg0zj4h+wRt1NcjPU+74EZU
 za+DI/fhZwwzHh2ykrgouKvsJA==
X-Google-Smtp-Source: APXvYqzd5mafem3up8aafRaHi3Cdrlk1qdlgUPk4BmPnowawJNQiWJT3C7hEk3PNUfbliN1Sz4ERKQ==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr6351215plo.198.1556837667556; 
 Thu, 02 May 2019 15:54:27 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:27 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 4/5] ARM: dts: rockchip: Add unwedge pinctrl entries for
 dw_hdmi on rk3288
Date: Thu,  2 May 2019 15:53:35 -0700
Message-Id: <20190502225336.206885-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155428_509049_DDB079B8 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

This adds the "unwedge" pinctrl entries introduced by a recent dw_hdmi
change that can unwedge the dw_hdmi i2c bus in some cases.  It's
expected that any boards using this would add:

  pinctrl-names = "default", "unwedge";
  pinctrl-0 = <&hdmi_ddc>;
  pinctrl-1 = <&hdmi_ddc_unwedge>;

Note that this isn't added by default because some boards may choose
to mux i2c5 for their DDC bus (if that is more tested for them).

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 74c9517c4f92..eebc04fa1e4d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1545,6 +1545,15 @@
 				rockchip,pins = <7 RK_PC3 2 &pcfg_pull_none>,
 						<7 RK_PC4 2 &pcfg_pull_none>;
 			};
+
+			hdmi_ddc_unwedge: hdmi-ddc-unwedge {
+				rockchip,pins = <7 RK_PC3 RK_FUNC_GPIO &pcfg_output_low>,
+						<7 RK_PC4 2 &pcfg_pull_none>;
+			};
+		};
+
+		pcfg_output_low: pcfg-output-low {
+			output-low;
 		};
 
 		pcfg_pull_up: pcfg-pull-up {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
