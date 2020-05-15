Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B311D5084
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 16:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llfA6bJUDpSVMrKMfRnHXJBc8u6Z+P6xhzQ2uxvr5ns=; b=mM+BQUlO/878fp
	TZihj3ew3afZtGE0rhwW1p+0PQ8/1OZckWxceZMJRahlOsC5C/Rr4HSunQQxEEkFzXtYSKUW3Ubip
	7BT7XcrSKFjJdMU/IcsXRuuEWmfmtF3HrJOKwj5hvdc9G+ZgubyqSuPhDOWnueKB3IQ2urHaGnuNd
	1Tf1B4Tx6bOPaQs5XVq/wserz8ZaMUpU7Yz6FyedwbkpkfF/4X1k/ZZfY5MJxrmOj0PGcJPnTETxZ
	hrdKHhB710hweqk3PGbIl87rmMg+M/+lCAgmAfKc5qgz50BD15T2aVguCChjnqJRR5DMqzy5xYeac
	EPI0Yx9pI7JpoK2R19xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbLq-0000BE-Q2; Fri, 15 May 2020 14:30:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbLh-0006lW-Gl
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 14:30:08 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0000f307f9e92f920a.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:f3:7f9:e92f:920a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9D9302A3463;
 Fri, 15 May 2020 15:30:02 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of BGR666
 format
Date: Fri, 15 May 2020 16:29:52 +0200
Message-Id: <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_073005_698364_2EA8F24B 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The rkisp1 supports RGB encoding with 6 bits per
color with the following format:
- - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -

This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
this format from the driver's formats list.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 61b9ebe577b2..2660e44eda88 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_RGB565,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
-	}, {
-		.fourcc = V4L2_PIX_FMT_BGR666,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
 	},
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
