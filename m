Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C9124A3
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vcUOFJUrQwW8rOVbIDOXzIol9bntRF2ZGmd8m46xxk=; b=l1G6vZkyhdNFj3
	tmDJRJYB4BX3Jh2RyoAU8gHdcphgWsxyw5XniuQTynwQ9eovgjMQX9Giu9q2WXFlZmZfXmc/7VYt8
	AfG0rCDOoylFHzbf+teqNm0gDa924pMbD+j2PVCHHlzMYZefNblGd/OfYkFBvh8XG3ZOi8eCULpdd
	ZbUUe8DCE7PaFJLOflA425en1D5NK9WbOgbwnZtSs49bdCpwVQFmPr7jOvyEOletn/bIoUabGmwlX
	6zlH62XExTc7+E6eOuPoPkRZj8cfXTzPk/wOAsg3ZfhsZl9SNbIfI+i3YcVLr1zR2w2a2E1aY5oND
	VD3ZdY2mqqJssPSbAfeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKLh-0007oj-QW; Thu, 02 May 2019 22:38:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKLZ-0007h9-3X
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:38:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id v80so1844714pfa.3
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBFW9ct9L9kxaMD7soK1MmMiGB02h+kun9/xHdLdz90=;
 b=T2KhVqVdwh/tHXA/wuJoYTbXZFKGkASbAuQ7K5ZNHDkBqe7WFxueRi4ZQzm45gLf4R
 Eprg1hoU+uGGZPCaZsQ10mK8879RYaj1HzX7E6Gkx+D50IZ2JbFyfHeg0wUOiVob+Vuq
 GJ/ylfxE9UI2yU1NYWDMzrpIvzCZQxrMahzGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBFW9ct9L9kxaMD7soK1MmMiGB02h+kun9/xHdLdz90=;
 b=pgCohh7CQQ+tXJTDNuW/Pj6FgaLFnEPDGQFeQQ3Uw7+jFVMO2AYf5UA2mW8exWDa7t
 mWIr0AyRtIcbTHtJa1lz8X34WZDODprnnJz6qh40T+pi9XzifqxeUaQl9b9CbldMceHi
 TmJNNQ9VlO4PLlN+OfRkcdGmOGo33D7b9Ut0oaQYgdC5LEi6Yx/YLDV8+du1nxc8Hf9X
 7NYMlRIUEPkNLnKF242ZhAbr8x2i2I9CPw1epVYp34R/OD3NrjbvbQ6BBxVY2GDQBnov
 MbD4fMoPy220Lxf6N0vNKvcElHVOeywhEOXcuaqM1aS/5r77P+NaSJOtwj1oblgVQ850
 eozA==
X-Gm-Message-State: APjAAAX7/EThioY0vtt1epQFYDlLOsDt/EnwgPVLH2ppdjdY4HifLSEh
 LDXIx4SZnH31LkithhpNyi50gw==
X-Google-Smtp-Source: APXvYqzq5JvWDWnU2WBxay5i7m7nGGZ4xrgcUbqlp6Nq6J2U3j8kQ26AAp/Vh8DDfS/M+iUafD66nQ==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr6416756pgd.91.1556836712382; 
 Thu, 02 May 2019 15:38:32 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id k186sm244151pfc.137.2019.05.02.15.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:38:31 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu,  2 May 2019 15:38:08 -0700
Message-Id: <20190502223808.185180-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502223808.185180-1-dianders@chromium.org>
References: <20190502223808.185180-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_153833_143198_FFD2F78C 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's call the core dw-hdmi's suspend/resume functions to restore
things.

NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
"late/early" versions of suspend/resume because we found that the VOP
was sometimes resuming before dw_hdmi and then calling into us before
we were fully resumed.  For now I have gone back to the normal
suspend/resume because I can't reproduce the problems.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c2e5..deb0e8c30c03 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -542,11 +542,31 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused dw_hdmi_rockchip_suspend(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_suspend(hdmi->hdmi);
+}
+
+static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_resume(hdmi->hdmi);
+}
+
+const struct dev_pm_ops dw_hdmi_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(dw_hdmi_rockchip_suspend,
+				dw_hdmi_rockchip_resume)
+};
+
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
 	.probe  = dw_hdmi_rockchip_probe,
 	.remove = dw_hdmi_rockchip_remove,
 	.driver = {
 		.name = "dwhdmi-rockchip",
+		.pm = &dw_hdmi_rockchip_pm,
 		.of_match_table = dw_hdmi_rockchip_dt_ids,
 	},
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
