Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4738A740
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 21:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DVKJtMxTDEtcMs66aQTdNibA+1b2lgJ68GWqWsoJ5s=; b=Q6WkTrq5UWwzfJ
	mSCggPYwW3L6jfsQNeEE/BpE6L7YUdiH37XTit6sGopNo1K5UdSRG3O2PX8WME9cWXJxN05mcJVr/
	UClHHy9KguVyCluuc8uzj7PhazZuhtjiL7q8C8Ie94zoifpZeGYQsAS1vFXB/magHpIhH0AFgUeZc
	e6exLAoRARwr0a2CBfRZ3WPpPQ/pdbu/D9xjjQnCMNpIHtdAG/fRcmQc4DehSyTtKXzkbL2HxI3P1
	aqVvdaEnj+0OBXcpEJoMVTa+2DedfFHWIaT01ug+1/PsvgNdFOumUT9fFATRVGb2+fX9ijB6o+uCZ
	YnXJOKTW1Q2Nh/LIj1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxG74-0005gw-63; Mon, 12 Aug 2019 19:36:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxG70-0005et-RB
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 19:36:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id CDB222854FE
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 07/11] media: cedrus: Specify H264 startcode and decoding
 mode
Date: Mon, 12 Aug 2019 16:35:18 -0300
Message-Id: <20190812193522.10911-8-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190812193522.10911-1-ezequiel@collabora.com>
References: <20190812193522.10911-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_123611_011630_B38462C0 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
buffers to contain H264 slices with no start code.

Expose this to userspace with the newly added menu control.

These two controls are specified as mandatory for applications,
but we mark them as non-required on the driver side for
backwards compatibility.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes in v5:
* Clarify commit log.
Changes in v4:
* New patch.
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 7bdc413bf727..10be2bd9507e 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
+	{
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE,
+			.max	= V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING,
+			.def	= V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING,
+			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING),
+		},
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= false,
+	},
+	{
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_STARTCODE,
+			.max	= V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
+			.def	= V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
+			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE),
+		},
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= false,
+	},
 };
 
 #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
