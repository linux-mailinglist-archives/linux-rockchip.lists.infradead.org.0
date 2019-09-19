Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F88B7B42
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 15:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAkConimZ6afuEaZQwbyN542nl6HhXQ9dsAeXbMZ8vM=; b=SEwcF1si/ii4dg
	HrHKoFShIAYbITMz16zvj3PWMnOzxDOsi4qjAZnm+LQ2gkAX/OZbNfE9nScXAlbuEnkyz5LU+Zorv
	s+K8kjiQSuFcVxUrsxwsBWIp+62UvpWP24vcRIXe7fuXJ6clkJ72IKFFlvzoSdQTZu3dsxWO8zWJp
	iRhGmImcCzTcTPV/RzkdaLqTCrWGdsOz9OEJaJaZ8YThZ+ilWq2RJnLeGVg7cyYvvnaHG718lxBSo
	eL+OY5WSttCxWz9NjiewCM/HA/hCcWL/z1X7kJBvOBIhwoUH86hpkXi5PU6JFxAZGRZZ1IYfoQrP/
	av2OAwnhsjEgmwUxfGIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwuW-0002C0-GZ; Thu, 19 Sep 2019 13:55:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwu5-0001pB-GH
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 13:55:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id 4so1941792pgm.12
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Sep 2019 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hcI+2qu3SHO1kkNhBRtR499gEhJVXFuDOb0iaJPJu1o=;
 b=iWJDh8AorH8nEJumZm/WKDcQuo+qYc151hnc2ynZHB08lu8t45FcSFc3XK8W4mnp1c
 T3000UZZfeJmfDdnixCbXHBmimTrjln/Z/hDuuTKRAyWMnJ9IL3M2Pgs8uVYZ8Okmtj9
 olBky5YGCY5LZ6wfafMKw7O8qXwRl3ZWMAZ34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hcI+2qu3SHO1kkNhBRtR499gEhJVXFuDOb0iaJPJu1o=;
 b=sAREEsTOiYerxwgJAMa26VdE0CP/tXPwz4841qNOBhj3f2MRBB1+WIiQg75cW63nIJ
 yZ5g4G6AN9xptCSQaBRHHKj34bVkNG0JBbjSnSThTbqBspPcMXykNvfN4gd7HceJgsid
 QowZQTtijMt1aJpZ+kkbwu0gs05SJc//Q2mx9ZzsQ10pcBBnHNlO6ccyD1o18Uj+fCPp
 K+C5UJf8M2tGuGXwUoPSCje+bWebp7d5akI3R8DQWbFhqVa9skyXe7Ey1x5FIi1scP2W
 ylIFI96FfCW1eKibXzoXGnrE5EWrdDSUQHSmdnAh4eZIiJD7OYhHtVLQn51xNhSx0HMj
 ty7Q==
X-Gm-Message-State: APjAAAW5BM9trRz0FVpmuea6VZIuvCEq59nI5nZ7XSlicFLY8dg1oCDt
 pkm1vYMNnq7XNthKu/A8n2QcOQ==
X-Google-Smtp-Source: APXvYqxyO8jD+PyDoTHkQIAYtp40Pex0/Mt27q7YWzADpFPuYqtJNqaFngWeKrfqiIca+BqjDGsIqA==
X-Received: by 2002:aa7:8acf:: with SMTP id b15mr4201816pfd.191.1568901324804; 
 Thu, 19 Sep 2019 06:55:24 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id q88sm6395907pjq.9.2019.09.19.06.55.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 06:55:24 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/4] ASoC: rockchip-max98090: Add description for rockchip,
 hdmi-codec
Date: Thu, 19 Sep 2019 21:54:48 +0800
Message-Id: <20190919135450.62309-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
In-Reply-To: <20190919135450.62309-1-cychiang@chromium.org>
References: <20190919135450.62309-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_065526_084377_66EAC8F4 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add support for HDMI codec in rockchip-max98090.
Let user specify HDMI device node in DTS so machine driver can find
hdmi-codec device node for codec DAI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..97fc838458f7 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -7,6 +7,7 @@ Required properties:
   connected to the CODEC
 - rockchip,audio-codec: The phandle of the MAX98090 audio codec
 - rockchip,headset-codec: The phandle of Ext chip for jack detection
+- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec.
 
 Example:
 
@@ -16,4 +17,5 @@ sound {
 	rockchip,i2s-controller = <&i2s>;
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi-codec = <&hdmi>;
 };
-- 
2.23.0.237.gc6a4ce50a0-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
