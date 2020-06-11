Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CA1F6B69
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=42imL2QL3o16OJqD0/Zf5H9SGF9nHO8TRz2dlz0bvw0=; b=T+QKrc74gytqbv54J/JQ9173sC
	YMeTeAUlY68VaQq0memE6sAV40kmOF27SqtrHodGtNowcG18AbChF07hv+GgcJ8shSvfUcf9fjfJE
	WFB986BJ+7Bnk8o8K/Zy9Q454A0+qC6k16MCdmxmjjoVqVtlFDwvEgGDrbmIGOapyXH2pYbbjdczt
	ZrjyWHVaI5GVPEIn2bAt1TQuqRIT+4NiXFbe/OJec0nHvrz2PeTLsCtUUwqyNFUhdImV3c2f4iNC6
	LdgaMwPOxoAPKdmIGp6PiPr26EObDrOOZ+GzIQcY4qfukrLaT6owlyEAXlyZpi/x+veLZyHsM7mW2
	iA0XZWdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPPM-0008T0-1E; Thu, 11 Jun 2020 15:46:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPP2-00086h-08
 for linux-rockchip@lists.infradead.org; Thu, 11 Jun 2020 15:46:06 +0000
Received: from localhost.localdomain
 (p200300cb871f5b00895b3f12fcab1eee.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:895b:3f12:fcab:1eee])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 663312A50A8;
 Thu, 11 Jun 2020 16:46:01 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [RESEND PATCH v3 6/6] media: staging: rkisp1: common: add
 documentation for struct rkisp1_isp_mbus_info
Date: Thu, 11 Jun 2020 17:45:51 +0200
Message-Id: <20200611154551.25022-7-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
References: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_084604_188596_8C8CA72A 
X-CRM114-Status: UNSURE (   9.53  )
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
 stable@vger.kernel.org, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add documentation for the struct rkisp1_isp_mbus_info with
one line doc of each field

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 13c5eeff66f3..6104eddac0e5 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -268,6 +268,19 @@ struct rkisp1_device {
 	struct rkisp1_debug debug;
 };
 
+/*
+ * struct rkisp1_isp_mbus_info
+ *
+ * holds information about the supported isp media bus
+ * @mbus_code: the media bus code
+ * @pixel_enc: the pixel encoding
+ * @mipi_dt: the mipi data type
+ * @yuv_seq: the order of the yuv values for yuv formats
+ * @bus_width: the bus width
+ * @bayer_pat: the bayer pattern for bayer formats
+ * @isp_pads_mask: a bitmask of the pads that the format is supported on
+ */
+
 /*
  * struct rkisp1_isp_mbus_info - ISP pad format info
  *
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
