Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0915BD578D
	for <lists+linux-rockchip@lfdr.de>; Sun, 13 Oct 2019 21:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYNc6H63N1e6w74RRaRCsO1I3B0/iBMF72C8lcHY4eM=; b=eb23MeTt+vysl/
	W9RaaChdSN0x4zDoLauGDzBqiIvBaldpCPPA/Qa4NTEUPl8jPRN2djicNfnxrkn6hH7oB9CmIm/dR
	W+AcCVkszvsAiYGu92Ss3vgpNo5PeWA4JkMS+MmjVfGGPGraGmjIWVy0pJWAENdUbYXwAA56j+Zyi
	pYx7UV7Zj7QNJUnl7lBIKWO7OndjWU394oVTwnv00nrSXg4fOkK53+7ER/VT0Bp14S76zSXgSW+9K
	/+8gBEiDSv+iw6BHNf4n5Utj6XE9eWQHEyI7UdqnxskA+sukqyzqHP53E3IfrkS7YOdyADHbr4W3+
	DzbMyKl57sCDLhzoXR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjEt-0003IG-Rp; Sun, 13 Oct 2019 19:09:11 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjEq-0003Gy-D3
 for linux-rockchip@lists.infradead.org; Sun, 13 Oct 2019 19:09:09 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Oct 2019 12:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,293,1566889200"; d="scan'208";a="198105089"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 Oct 2019 12:09:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iJjEj-000BUd-7y; Mon, 14 Oct 2019 03:09:01 +0800
Date: Mon, 14 Oct 2019 03:08:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: [RFC PATCH] media: rockchip: rkvdec_queue_ops can be static
Message-ID: <20191013190822.klfeelozbfx6qrnz@332d0cec05f4>
References: <20191011093342.3471-4-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011093342.3471-4-boris.brezillon@collabora.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_120908_453795_6DDD3B4F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, kbuild-all@lists.01.org,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Fixes: 0fb0ad38c9ed ("media: rockchip: Add the rkvdec driver")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 rkvdec-h264.c |    6 +++---
 rkvdec.c      |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rockchip/vdec/rkvdec-h264.c b/drivers/staging/media/rockchip/vdec/rkvdec-h264.c
index d241afe12edd6..2d62ab739dbc8 100644
--- a/drivers/staging/media/rockchip/vdec/rkvdec-h264.c
+++ b/drivers/staging/media/rockchip/vdec/rkvdec-h264.c
@@ -695,9 +695,9 @@ static u32 poc_reg_tbl_bottom_field[16] = {
 	RKVDEC_REG_H264_POC_REFER2(1)
 };
 
-struct vb2_buffer *get_ref_buf(struct rkvdec_ctx *ctx,
-			       struct rkvdec_h264_run *run,
-			       unsigned int dpb_idx)
+static struct vb2_buffer *get_ref_buf(struct rkvdec_ctx *ctx,
+				      struct rkvdec_h264_run *run,
+				      unsigned int dpb_idx)
 {
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
diff --git a/drivers/staging/media/rockchip/vdec/rkvdec.c b/drivers/staging/media/rockchip/vdec/rkvdec.c
index 3531ce0dd3e72..5f07d589e4f9c 100644
--- a/drivers/staging/media/rockchip/vdec/rkvdec.c
+++ b/drivers/staging/media/rockchip/vdec/rkvdec.c
@@ -495,7 +495,7 @@ static void rkvdec_stop_streaming(struct vb2_queue *q)
 	rkvdec_queue_cleanup(q, VB2_BUF_STATE_ERROR);
 }
 
-const struct vb2_ops rkvdec_queue_ops = {
+static const struct vb2_ops rkvdec_queue_ops = {
 	.queue_setup = rkvdec_queue_setup,
 	.buf_prepare = rkvdec_buf_prepare,
 	.buf_queue = rkvdec_buf_queue,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
