Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2221A54D
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 00:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuYkjkUbxTiCnzg/CggrCVNHarbgE0nhlFHMkTk6UMk=; b=ds/AEczzM/vgz5
	olk196wj0cVWk9Dxr9k4m+mXcEpVFy5E+oC9E4ZRu0vO/JerC/TYaFTBu0a6iXCWGTWZAMBSuKdh3
	aI7gfEK5xdn4a10p8yh9SVeRQSDwlagdl/F94PML9+YhRKYlJN/kfjLFiBTgBFWgzHtX5EBcSPcNs
	kVDirQ1lGMS7dnZJA2iNphEYL8IRM4E7y62uKzoWc6B4DfhoZkQcJNFQpMISGzNq83zUrXmDUdJuC
	0XX4YsqQmN40SwjTf/K5AomeQ8gMAzVVKMDyuPQr+mPNm5k4Kzr7LY7OVwnBU7lFFedSuNlfgUfH5
	fgABUpLuBEZzaiiXS2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPE6m-0005H5-VV; Fri, 10 May 2019 22:35:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPE6i-0005F5-Ve
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 22:35:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so3645630pgi.10
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 15:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hV5HxwGs7gY03wK3rK8o6uhUFP9lcwaLtj0H4FYh2dk=;
 b=lTuSMAv25fNL9J/QKC0HQ9qmLRckYs3hBlUXs/+YYhydsEvcq+SyATaNCV1rCMDz89
 BSTK5DP0LEnWSGUhOyGTr7I5U8Bw2WIhDsXgnfcmHVBa9ofbOBqOcP7XWDZOJDMDbQga
 4Sw5ibIdQSa7/HY4XS9y5VByC3g0GUYAx2VI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hV5HxwGs7gY03wK3rK8o6uhUFP9lcwaLtj0H4FYh2dk=;
 b=hsFbatcMiqKM1xuW/a1YvivR87U2xhgFZW3T4ffIcd0DCYvu8agmnpeAAajzQn55po
 n7c8qhN125a/o8vheRYoJflagQ70FNC2Yac/t8M7L8A7oLAv2GZtiA7npvOHZk+FSIIh
 o2Q2Ul5ZNmf5M9y26NLjONDGh1B+z91zCeEOjN/VXq52AgtQ54ee2pdPsSAFZVYv418f
 EhO+FoGzXwGLlL27J85QPmyS6CQPqs2K7Ih4qlQfYOsqzLe+ZzQiIVv1WntF0VRWFQsQ
 rfQn6u1x9iTIBei3eo7uw0iK4HkiqJbztGA0+TQbpV/SSFieAxc0H+8xn/68YaQemqov
 7oXg==
X-Gm-Message-State: APjAAAWb8gSZw1HUj2odnkx3bqGxj0Qw7sMzPnNu0gfa9qnBKn/YfBIj
 dzzq9bO6Racfh1NuEin6VX8ROw==
X-Google-Smtp-Source: APXvYqx00UvXi9LVlDxBQ/qgIeKHowFgu4na2sTLOT4tSNXiduy9+oOD4eLycJ+CqSEWgmcp1mI+eQ==
X-Received: by 2002:a65:4c86:: with SMTP id m6mr16401970pgt.75.1557527712392; 
 Fri, 10 May 2019 15:35:12 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j6sm7689393pfe.107.2019.05.10.15.35.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 15:35:11 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 1/4] spi: For controllers that need realtime always use the
 pump thread
Date: Fri, 10 May 2019 15:34:34 -0700
Message-Id: <20190510223437.84368-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190510223437.84368-1-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_153513_015507_4E721A85 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If a controller specifies that it needs high priority for sending
messages we should always schedule our transfers on the thread.  If we
don't do this we'll do the transfer in the caller's context which
might not be very high priority.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/spi/spi.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8eb7460dd744..0597f7086de3 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1230,8 +1230,11 @@ static void __spi_pump_messages(struct spi_controller *ctlr, bool in_kthread)
 		return;
 	}
 
-	/* If another context is idling the device then defer */
-	if (ctlr->idling) {
+	/*
+	 * If another context is idling the device then defer.
+	 * If we are high priority then the thread should do the transfer.
+	 */
+	if (ctlr->idling || (ctlr->rt && !in_kthread)) {
 		kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
 		spin_unlock_irqrestore(&ctlr->queue_lock, flags);
 		return;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
