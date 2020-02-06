Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD0154E96
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Feb 2020 23:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ambLvcIeobfbqSHrGo75GzS2UhZpYJ9HMTQqz2IE2I=; b=CanwORjSjs3+Dh
	YeViKBQUKAXqA1bqVCgjTXLCPzcGLu8eFrFPsxvmYAPWPMTuyAf+pT/ptLIz5w2TLUAbRptIkLyA7
	yCf0e8kFnr3bZwjDMoZy4l5tuQfKRgVSB2O4sSU1dMTUgngO5gx2mxz+Llyq/5WRdasTyjy7nOa90
	mVfrQumargqRaAY2V/nNXAqcRH+X/aeJ/X9786fvHtjKQ+dAEkHy9sbq2p8G+fGLj5PqxzYAVfSbK
	5lxryp+raHjgiQdvuMIORy2zGU4X/Mq1tgs1oM6xDPFzM0wvkGEYPvra7I5VRTwtd9jojDJUb4kCZ
	qPscacNOoRcQiN3YxdSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpJ5-00032C-VB; Thu, 06 Feb 2020 22:07:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpJ2-00030f-VL
 for linux-rockchip@lists.infradead.org; Thu, 06 Feb 2020 22:07:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 36CFB2946A4
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: stats: use consistent bus_info string
Date: Thu,  6 Feb 2020 19:07:09 -0300
Message-Id: <20200206220712.1243438-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200206220712.1243438-1-helen.koike@collabora.com>
References: <20200206220712.1243438-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_140729_135278_552D9CEA 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel@collabora.com, dafna.hirschfeld@collabora.com,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 mchehab@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Stats entity is using a slightly different bus_info string
"platform: rkisp1" (with a space) instead of "platform:rkisp1" used by
the rest of rkisp1 code.
This causes errors when using v4l2-util tools that uses the bus_info
string to identify the device.

Fixes: 9a28dbd65a88 ("media: staging: rkisp1: add capture device for statistics")

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index d98ea15837de..7f461477497a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -70,8 +70,7 @@ static int rkisp1_stats_querycap(struct file *file,
 
 	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
 	strscpy(cap->card, vdev->name, sizeof(cap->card));
-	strscpy(cap->bus_info, "platform: " RKISP1_DRIVER_NAME,
-		sizeof(cap->bus_info));
+	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
