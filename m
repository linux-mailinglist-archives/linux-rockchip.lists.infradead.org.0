Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2235B1CF401
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 14:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cqDwiD+AmbXy+w7lZXabZLHgb7zN6Fz2FKyftgUhwQs=; b=Pco
	B3KBNG2bYGNFpJAJn2L47jUFo5RUEvX4QQLnUCjnl8bgsQ1XNzY6RPBO1tZFppoCMAIMQBUMWKyXr
	GtkZ1KPkcgK/h+WfEzGdc7C1I2SqEAytJnBr5dnHeuXiC7BQPtsoP+wc4+d95JCtEVQ5UgKQgsjyb
	Wh2r7qnQr+btmw9usPLZFIV5vVJIVA5YxxSVvQC7+j+QIpk2qajAAUqaKEIcFMH/AOkHOjNw6R94m
	iCUenQD+N6OlTWmZZ96k8UBb2PzdNb0gVaW5Zek5Rwz/fLty9yKknCN3XiCbVL5syZbZ4KX9ORYES
	yztaIGe73wLAyzWWAk0Af6M/GvDKHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTft-0004R5-O3; Tue, 12 May 2020 12:06:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTfn-0004OS-6t
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 12:06:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 90AA62A20B0
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/5] media: staging: rkisp1: change workqueue to threaded irq
 in stats
Date: Tue, 12 May 2020 14:05:17 +0200
Message-Id: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050611_375467_EF4F6442 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Reading the statistics registers might take too long
to run inside the irq handler. Currently it is deferred
to bottom half using workqueues. This patch replaces the
workqueue with threaded interrupts.
This fixes an item in the TODO file to move the driver from staging.

Patches Summary:
1. Since the irq is shared, the isr should return either IRQ_NONE or IRQ_HANDELD.
This patch fixes it. In later patch, IRQ_WAKE_THREAD will be added.
2. Replace a long bitwise-or of the statistics flags with a macro to improve readability
3. Fixes a bug of using spin_lock instead of spin_lock_irqsave inside an irq handler
3. Replace two locks in the rkisp1_stats object with one lock that
protects the 'is_streaming' variable and the 'stat' list of buffers.
4. Replaces the workqueue with threaded irq in the statistics.

The code is tested using the 'cam' command from libcamera:

cam -c 1 -C  -s width=1280,height=960 --file="/tmp/libcamframe#.data"

Dafna Hirschfeld (4):
  media: staging: rkisp1: use a macro for the statistics flags mask
  media: staging: rkisp1: stats: use spin_lock_irqsave for irq_lock
  media: staging: rkisp1: stats: replace locks wq_lock, irq_lock with
    one lock
  media: staging: rkisp1: replace workqueue with threaded irq for
    reading statistics registers

Helen Koike (1):
  media: staging: rkisp1: return IRQ_NONE in isr when irq isn't for ISP

 drivers/staging/media/rkisp1/TODO             |   1 -
 drivers/staging/media/rkisp1/rkisp1-capture.c |   7 +-
 drivers/staging/media/rkisp1/rkisp1-common.h  |  20 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  22 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     |  20 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c   | 197 +++++++-----------
 6 files changed, 121 insertions(+), 146 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
