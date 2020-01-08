Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA204134F88
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 23:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKfdo11EXiKmnyW3d8EpukAgfxcu3WdrazXWg6+1qOU=; b=mo20u4XVQGHkgv
	B062MIrSvcOOMEwIeyV1vKSx1aXIRAVS13UN7YtvrDDdeIvVX9yTLseONvpBpuyF2sJbQQFlvFUU6
	jEbemn9/C8vyW+N0sv5685LZofscJui7qS8NgvGLwDOm+h75V7E62CUJ+mmbx6zuW2u15lRhfJAdy
	GdqWDtTRqwITMhvZhOkrZzpA4F+fbzXjfRtHEZQJRrMuwFjUbpKIX4pKcCL7fYpEkfB798SdJRki7
	UK8U2t/0ouyb4qWM6M1j6ta0UAb+W4prsQ92kfu3cudMW3DzaKiOM77fYYyEaD5Uh6u3Szzjv1zRj
	B9NkGPIqdrAZvET6jtmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipK3F-00066T-Eh; Wed, 08 Jan 2020 22:43:45 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipK2m-0005cT-T6; Wed, 08 Jan 2020 22:43:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 8683336E4DE5;
 Wed,  8 Jan 2020 23:43:15 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bqW6UVg2x1jr; Wed,  8 Jan 2020 23:43:13 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 1/1] drm/rockchip: fix integer type used for storing dp data
 rate and lane count
Date: Wed,  8 Jan 2020 23:39:49 +0100
Message-Id: <20200108223949.355975-2-t.schramm@manjaro.org>
In-Reply-To: <20200108223949.355975-1-t.schramm@manjaro.org>
References: <20200108223949.355975-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_144317_152792_8174010B 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, Tobias Schramm <t.schramm@manjaro.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
the type of variables used to store the display port data rate and
number of lanes to u8. However u8 is not sufficient to store the link
data rate of the display port.
This commit reverts the type of both the number of lanes and the data
rate to unsigned int.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.h b/drivers/gpu/drm/rockchip/cdn-dp-core.h
index 83c4586665b4..806cb0b08982 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.h
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.h
@@ -94,8 +94,8 @@ struct cdn_dp_device {
 	struct video_info video_info;
 	struct cdn_dp_port *port[MAX_PHY];
 	u8 ports;
-	u8 max_lanes;
-	u8 max_rate;
+	unsigned int max_lanes;
+	unsigned int max_rate;
 	u8 lanes;
 	int active_port;
 
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
