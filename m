Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7362124C9
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Etp+ClHyo5jYtsFcNlIQKLgjzcuhV2rF259ChNBMW4o=; b=Mn6UizkJewHRNp
	wM2hVcgEs07HXfEp1LJ+Z5IGs5tMS5QXYTMUOpPUD0NZk7kSHA9oXw18dQxIeGzh9fySgQhEBMkHZ
	QOrwIyNDSTtcxHB/s76YYGxOhVTL6d5ToitoXXf3PBSM/2dlaAM7ci5F/vALTjux+ra3Lzqny/pmF
	1OTiWe9YGBOUw2dX0SJ8S7jqnGyRVkNgmvYWy1ngnrqeHioFbhdUD64ogGn/BRQ5AlQKEOsLilYfd
	DEsjjrpE2O996v3LWVRANI0xTqGjzqWkB7oOO3EDUboIU9I0hFD54pD0iHyVSE7A9/LWccBr5BQfF
	hUkbiIpL+KhTHK+N8vDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKb5-0005D4-9y; Thu, 02 May 2019 22:54:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKav-00052Z-2m
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:54:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id z28so1868329pfk.0
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U2bbAFLYHg7BbnCqa8Z/3P6ZnGKzIwrgxFqmU0u6MtQ=;
 b=nvDXTTBkx6gM2GY6hocJXtXsnawL+o/xemGlJje4+eusDN2A0o97J9U5hlrR6RCeYY
 IaJiOv66CzjRFRG/86f/hhXlcSZ+ENN1Ls1spzYSyWL9Pe4VRgvlST5J0rYjN+wmNlBC
 i7F+im4W83ea6FPef3xVPExFEFv7Pdt/bcRcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U2bbAFLYHg7BbnCqa8Z/3P6ZnGKzIwrgxFqmU0u6MtQ=;
 b=pCrEwwOF4/Yz3xieCIun7WJx/yjwFMO9/nD435dGZs3N+zoMdjdcj3YkyClzZExQBj
 2b4m6jr6Ao/3KdKztKkG7PDYTFu6D4Y7lIm9NJhSfvIrWuCbfPmwdMybuOMBCera48aD
 Got3WsMthPE1fITA0OQLozy7NLUWk6/nBQ+efoiYnOgkPYodIlZNkLpqcoGbT88MIjVG
 giSQI+0l+jsvGr3M/tAaVtdL5yOubS4KnYRg3TrqTLtbV3hB3BqEaMyZB8AkNOAAVN71
 OeJKwaw2pAj35KQy2VfQFgs7550eJqmw+CDl2jAXONpTaL87NHT9yVeM+k0vVDoKoOFa
 2FRA==
X-Gm-Message-State: APjAAAVBdybIKjNSrq9tJWWCysorzL5sBE5pERcOfnQ76NQxQp15ePy7
 pfpMaeGs7c4qdF92aRC9qHVH5w==
X-Google-Smtp-Source: APXvYqwTNwDX8rXg0Agwu8rSnUQ7+u0qFbATbHXFLNSH3EgUqxCM+Vs9APjZJjt0fwjZRPzV6nerSA==
X-Received: by 2002:a65:6688:: with SMTP id b8mr6519822pgw.81.1556837664123;
 Thu, 02 May 2019 15:54:24 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:23 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/5] dt-bindings: drm/bridge/synopsys: dw-hdmi: Add "unwedge"
 for ddc bus
Date: Thu,  2 May 2019 15:53:32 -0700
Message-Id: <20190502225336.206885-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155425_128328_BF63C626 
X-CRM114-Status: GOOD (  12.00  )
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In certain situations it was seen that we could wedge up the DDC bus
on the HDMI adapter on rk3288.  The only way to unwedge was to mux one
of the pins over to GPIO output-driven-low temporarily and then
quickly mux back.  Full details can be found in the patch
("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus").

Since unwedge requires remuxing the pins, we first need to add to the
bindings so that we can specify what state the pins should be in for
unwedging.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../bindings/display/rockchip/dw_hdmi-rockchip.txt         | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
index 39143424a474..8346bac81f1c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
@@ -38,6 +38,13 @@ Optional properties
 - phys: from general PHY binding: the phandle for the PHY device.
 - phy-names: Should be "hdmi" if phys references an external phy.
 
+Optional pinctrl entry:
+- If you have both a "unwedge" and "default" pinctrl entry, dw_hdmi
+  will switch to the unwedge pinctrl state for 10ms if it ever gets an
+  i2c timeout.  It's intended that this unwedge pinctrl entry will
+  cause the SDA line to be driven low to work around a hardware
+  errata.
+
 Example:
 
 hdmi: hdmi@ff980000 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
