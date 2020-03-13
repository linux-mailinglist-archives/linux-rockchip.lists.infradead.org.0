Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FB5183EC9
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Mar 2020 02:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsF4TeLIFGjBY2sziJoI60jAi07BMlJ6rEHmjc/K14s=; b=ZzW28Eo85hDdTN
	mVLAOnhzs4QDnbqn2D9i5pbFHKD3rC0xoafUPgqjaU7sa+o2JJ2Z7jWhXJc29IWMfE23haGbPy/7u
	fTw5+FTkvo45bnPWNjovBYZ25OPUr+E3LP1cpJ7GQauMkmIZnM+UrhNvprvKOthY3FgN9kUkCELfu
	DFUnGdx6VjwFBlTUkOilLmDn215lZ62B0PPFzsWEkKQ4XVCptAUx3h0MvNv1qoIZ9i3CfB9wSwdQc
	EhmJRs4Y8sCf+PxrfOewBaJMxQpm+ZFY+PpXsxuak20qkuUnav5yLmytsZKiShZIc50oda9Pj1HJq
	HtWiGKaCrIoINfTI/qXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCZPY-0002sj-9y; Fri, 13 Mar 2020 01:46:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCZPU-0002q3-Du
 for linux-rockchip@lists.infradead.org; Fri, 13 Mar 2020 01:46:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D3028296FBE
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/3] media: staging: rkisp1: do not call s_stream if the
 entity is still in use
Date: Thu, 12 Mar 2020 22:46:25 -0300
Message-Id: <20200313014626.3103091-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313014626.3103091-1-helen.koike@collabora.com>
References: <20200313014626.3103091-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_184648_614455_488D3D51 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If stream is being used by another stream, then .s_stream callback
shouldn't be called.

This fixes the following behaviour:

When performing smultaneos stream from both capture devices, stopping one
streaming would make the other to stall, since it disables all the shared
entities from both pipelines.

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Hi,

I'm not sure if it is ok to check for entity->pipe, since I didn't see
other drivers doing this.
Please let me know if you have any other suggestion to verity if the entity
is marked as streaming.

Thanks

---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 97091e5a6e6c..e665381b5af0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -892,6 +892,10 @@ static int rkisp1_pipeline_disable_cb(struct media_entity *from,
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
 
+	/* subdevice is already enabled */
+	if (curr->pipe)
+		return 0;
+
 	return v4l2_subdev_call(sd, video, s_stream, false);
 }
 
@@ -900,6 +904,10 @@ static int rkisp1_pipeline_enable_cb(struct media_entity *from,
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
 
+	/* don't disable subdevice if it is still in use by another stream */
+	if (curr->pipe)
+		return 0;
+
 	return v4l2_subdev_call(sd, video, s_stream, true);
 }
 
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
