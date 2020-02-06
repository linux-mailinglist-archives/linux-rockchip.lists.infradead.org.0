Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0795154E9B
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Feb 2020 23:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12krJ5GTDOrX/nA7DkB8kHMgCSjSBO+UzjmEr4Krxo4=; b=WBAfhyi75Lx/iQ
	iI3KDzsTHilc4ktLq7pRAh0xJBfQVpMPDm8QowB48sI58VBdAZesdqYD5+vA52PekmrzNQpvAVodc
	cWauxOPKyMb18aupWd18kkx366g2FLg4LPU0Qv/ckgvMcAFxu7bvhx3RPdHicin0IhVoD/KjQXYhm
	458Ou26KApClqJq6YuhL8MfaplVTqIe6057XkS9Zf4+S5dfMPgykYKpnzwba2iLqDzw0TjUDNMRjB
	k65Rwpxzvp9JpOo0BTe/Yvzgy2rdFRkx8O2r+Ak7Hmi7W7KA8hiewd+YD1wGxiAI/Glr0CzD9aSY3
	tM/Y2i9IVgXIlMIWggYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpJ8-00035H-NT; Thu, 06 Feb 2020 22:07:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpJ5-00031X-41
 for linux-rockchip@lists.infradead.org; Thu, 06 Feb 2020 22:07:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id DA470295903
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: rsz: don't ignore set format in bayer
 mainpath
Date: Thu,  6 Feb 2020 19:07:10 -0300
Message-Id: <20200206220712.1243438-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200206220712.1243438-1-helen.koike@collabora.com>
References: <20200206220712.1243438-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_140731_308475_3A40D54B 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

Fix issue when, in case of raw bayer format in mainpath,
VIDIOC_SUBDEV_S_FMT ioctl didn't have any effect, is wasn't updating the
format of the pad.

There is no crop for mainpath bayer raw data. Remove leftover check in
set_format, since check is already done in crop rkisp1_rsz_set_sink_crop()
function.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 8cdc29c1a178..d986953d268b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -537,15 +537,6 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
 		rsz->fmt_type = mbus_info->fmt_type;
 
-	if (rsz->id == RKISP1_MAINPATH &&
-	    mbus_info->fmt_type == RKISP1_FMT_BAYER) {
-		sink_crop->left = 0;
-		sink_crop->top = 0;
-		sink_crop->width = sink_fmt->width;
-		sink_crop->height = sink_fmt->height;
-		return;
-	}
-
 	/* Propagete to source pad */
 	src_fmt->code = sink_fmt->code;
 
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
