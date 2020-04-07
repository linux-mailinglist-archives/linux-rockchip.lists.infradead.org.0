Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC891A12A5
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 19:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FDF3u7jSPY+P0Gfax6VcqrfPH8n5/G7+fPkOLgOA7+I=; b=okhJEA/OX5jVlQ
	RB1To+59luEtNnzh/wFrjdN8BBNxmdyiRbZAkJILPhGXqdiXdqY8lfxn0eu7pN228ot6LegJyp9KD
	72X64yyxS/eyRbBwMKbdXEoJQwV2z+QhsLRCtUNyPt4u8RpVz4GnCcRqcZCxffzv0gStp8Vg02p2B
	OCnZliXkwXkFNNuunddllPiZXFyISEeu3AAburcuVftU8P0ek1p4x2ZRGwiUWu5bFSnnjxQi7e8nO
	qBrWXD6hbskg3x+U7cIrqROdNTESFFnHLAqzN8IMNj5lKAan05nkDSd5VOJTx2308CzHUMRUnLjm7
	DSDeszP4AUBDHUlI2lRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLryh-0004Md-Ok; Tue, 07 Apr 2020 17:25:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLryf-0004M4-5B
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 17:25:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E3CA929677F
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: remove TODO item - uapi structs
 compatibility
Date: Tue,  7 Apr 2020 19:25:22 +0200
Message-Id: <20200407172522.20340-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_102533_329226_55D027D0 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

remove the TODO item:

* Make sure uapi structs have the same size and layout in 32 and 62 bits,
and that there are no holes in the structures (pahole is a utility that
can be used to test this).

It was tested with pahole and found compatible.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
I tested it using a script that compiles a code that includes the header
both for arm and arm64 and compare the sha1 of the pahole results:

git clone --single-branch --branch rkisp1 git@gitlab.collabora.com:dafna/v4l2-ctrl-abi-check.git
./run-rkisp1.sh

 drivers/staging/media/rkisp1/TODO | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index 0aa9877dd64a..f495b8177767 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -4,9 +4,6 @@ cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
 * Fix pad format size for statistics and parameters entities.
 * Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
 * Fix checkpatch errors.
-* Make sure uapi structs have the same size and layout in 32 and 62 bits,
-and that there are no holes in the structures (pahole is a utility that
-can be used to test this).
 * Review and comment every lock
 * Handle quantization
 * Document rkisp1-common.h
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
