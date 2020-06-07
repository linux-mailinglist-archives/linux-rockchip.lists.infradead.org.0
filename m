Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C021F0F96
	for <lists+linux-rockchip@lfdr.de>; Sun,  7 Jun 2020 22:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ncLs2JsZq8XwCOv92wEkcoC+ZtVHtiQTmzQT9m1n8E=; b=og3QyxXQET/+zIcS7Q0ynu1k0T
	mgxCXhUT/Mg0UKt/4ohrj6VlYyyurguva9f8YuP8sdpn3hhKp/f3L8YHq+IyK/YCyalRh94DD2Ngf
	WqALX+YYfSIgv3iIRWr4SWQ6xljiRsNC1cdAC9bDU3E/26af4Y6Q5FwExzg3HTiLHueWFwIy4CHNV
	sW6Eyib2bxZZGcx9rbg/28yYNeyd5M5VbWdyLmUoayQ5w+oL8fK5JqfeRsIy8NGpbZYRxZM/Gyl70
	46J4YfWR/ZCGAu7kfh9clklDFg0fZ7Et7d8DY7KXmZj7+j+cB9HRvzUJUT9FZ8MOBkcS5QnMi3Sb/
	OhMyrVqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1rM-0003Xn-17; Sun, 07 Jun 2020 20:25:36 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1rF-0003W3-Pe
 for linux-rockchip@lists.infradead.org; Sun, 07 Jun 2020 20:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=y4cPh0/f3xkxdbgS5qj6WkCOPZvcYGJkTGyjKr6sOYA=;
 b=V/UDgp0fOZoYYqSnEV7WYd1bN1V0iJF7T9go8ZR4/oRHNdJYs8t2JHrHab3Uh36JHfQt
 rnv2kaJZuVnYJDvc1Z6KMDn6Xr9nZEWxXrXNzX9xuz8sZODjxaEVZgfgbMjTwrle+xRbcr
 SAzf6iHLcMiPL9is3bJFs87OEGRim1rxI=
Received: by filterdrecv-p3mdw1-6f5df8956d-dtkn2 with SMTP id
 filterdrecv-p3mdw1-6f5df8956d-dtkn2-21-5EDD4D35-1F
 2020-06-07 20:25:25.615165994 +0000 UTC m=+346301.434158460
Received: from bionic.localdomain (unknown)
 by ismtpd0001p1lon1.sendgrid.net (SG) with ESMTP
 id 8kV6fIRtTkGGPZ3_nSj1Tg Sun, 07 Jun 2020 20:25:25.442 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] drm: drm_fourcc: add NV20 YUV format
Date: Sun, 07 Jun 2020 20:25:25 +0000 (UTC)
Message-Id: <20200607202521.18438-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607202521.18438-1-jonas@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h=2FtF3WwO9txVSXf8F?=
 =?us-ascii?Q?HjIX=2FR2s7i+VJch9=2FwdL08LjEKxGfZ3lRwZHytH?=
 =?us-ascii?Q?crArFghPPbRhR21qGzFBxRRVKhycnM1ppOQ2dik?=
 =?us-ascii?Q?gS2=2FtQJg+O6lXpttMsfbl5+nDF42+waYqbqB450?=
 =?us-ascii?Q?OmD3FetZN=2Fkm0yx=2Fd4LL7Rdkrs5OT+bAFJv6Mh7?=
 =?us-ascii?Q?nzGxKIFi5nK2cb8d6LWRQ=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?=
 <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_132532_483071_F894FD03 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Brian Starkey <brian.starkey@arm.com>,
 Ben Davis <ben.davis@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
The format is similar to P210 with 4:2:2 sub-sampling but has no padding
between components. Instead, luminance and chrominance samples are grouped
into 4s so that each group is packed into an integer number of bytes:

YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes

The '20' suffix refers to the optimum effective bits per pixel which is
achieved when the total number of luminance samples is a multiple of 4.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/drm_fourcc.c  | 4 ++++
 include/uapi/drm/drm_fourcc.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
index 722c7ebe4e88..2a9c8ae719ed 100644
--- a/drivers/gpu/drm/drm_fourcc.c
+++ b/drivers/gpu/drm/drm_fourcc.c
@@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
 		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
 		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
 		  .vsub = 2, .is_yuv = true },
+		{ .format = DRM_FORMAT_NV20,		.depth = 0,
+		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
+		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
+		  .vsub = 1, .is_yuv = true },
 		{ .format = DRM_FORMAT_Q410,		.depth = 0,
 		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
 		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index b5bf1c0e630e..244d32433a67 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -242,6 +242,7 @@ extern "C" {
  * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
  */
 #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
+#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
 
 /*
  * 2 plane YCbCr MSB aligned
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
