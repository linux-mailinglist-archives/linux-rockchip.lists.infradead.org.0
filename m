Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EAC15220D
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Feb 2020 22:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1ApOWMgQT1RU+LuC+InDLOBMzlJdQyhVvPXXL4iOaAE=; b=AIcI/bwcxc1PaTiXQPrObzHeEb
	ivsvKA1yWy6xoJs4kmimBR2DTVtMhutlSk+lJ7BVZnLLx/08UQpNUCcuDCQm40Pmc8ghB74vObn5v
	Mnl3LNWuEMmRm/ebcMjRtm6Y5yPyllo2OMdtZ190+Cm8ZMj+lDcxLkwndVQrBWcItt3EkoNyrw6xD
	Dq2WteZOBI4ZWBswUaXnrx9SixeH8MY1VGNUzOhz6M0vL/t4bqBeAgotCFTp4VGeHpPSm7VK5/8Qv
	COlQwDu3SwCwHk+i5bGGsIpZGmi4YQt+A6E2nU2o41HIplgQ7VbryY3AZrYQx/vAJj/rxniZT74zJ
	T63Dw4Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz60f-0004GK-8j; Tue, 04 Feb 2020 21:45:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz60b-0004Es-RX
 for linux-rockchip@lists.infradead.org; Tue, 04 Feb 2020 21:45:27 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:113f:ad1c:28d4:5c9b:1c04:c661])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 68001294288;
 Tue,  4 Feb 2020 21:45:24 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: improve inner documentation in
 rkisp1-isp.c
Date: Tue,  4 Feb 2020 22:44:46 +0100
Message-Id: <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_134526_018519_B4B9A3C1 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Improve the documentation in the beginning of the file
rkisp1-isp1.c

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 2b0513e826fe..844556389b0b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -28,9 +28,9 @@
 #define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
 
 /*
- * NOTE: MIPI controller and input MUX are also configured in this file,
- * because ISP Subdev is not only describe ISP submodule(input size,format,
- * output size, format), but also a virtual route device.
+ * NOTE: MIPI controller and input MUX are also configured in this file.
+ * This is because ISP Subdev describes not only ISP submodule (input size,
+ * format, output size, format), but also a virtual route device.
  */
 
 /*
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
