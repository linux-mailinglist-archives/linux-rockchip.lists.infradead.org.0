Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19FA1F0637
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jun 2020 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jVLqKnKQ+FDfJpp49JxToZ6MaJpIRHq/Hy0O1Fb3ZPk=; b=CVtC3FeokJZMl84ZQmhU4KTQjr
	jf5i52jV/jwTpaIZbFXnBAiC6EkxRSKTfOnhOXnWRQlrsOuU9mh6i/jamW15bBppTye8o9wtBvjGK
	BOQQx+lcwKZpIxscTsDtRvWJ8mJXJKX9Ra/1Snc79m+dGh1SA/N918w83BehDAI7irBhO4JORY0EQ
	jix3/0jCK0H62r0pTIYkF2WHcrxBMklNMyYT2giKc1/TiQQf7hBJ0b4/7PERJrl4T0r2n+f7146bM
	LNBfy6OYhXtD7BXvtHUOuWVbXNPVdgQvr9lRxH8YuQmHEUpAvtJkS9tBxDnOMU5WmKQtyMr/b4E9S
	5LeEYlzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhWUf-0002i0-RG; Sat, 06 Jun 2020 10:56:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhWUb-0002gO-VT
 for linux-rockchip@lists.infradead.org; Sat, 06 Jun 2020 10:56:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 13945260258
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils 3/4] v4l2-ctl: subdev: Add support for the CSC API
 in the subdevices
Date: Sat,  6 Jun 2020 12:55:37 +0200
Message-Id: <20200606105538.30147-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
References: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_035602_148624_26E7A19B 
X-CRM114-Status: UNSURE (   9.40  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The CSC API allows userspace to configure the quantization and
(ycbcr/hsv)_enc fields when setting the formats, so those fields
are not read only in userspace. This patch adds support for
this API in subevices.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/v4l2-ctl/v4l2-ctl-subdev.cpp | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
index c0f36eab..bc9ee101 100644
--- a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
@@ -428,10 +428,14 @@ void subdev_set(cv4l_fd &_fd)
 				fmt.format.colorspace = ffmt.colorspace;
 			if (set_fmt & FmtXferFunc)
 				fmt.format.xfer_func = ffmt.xfer_func;
-			if (set_fmt & FmtYCbCr)
+			if (set_fmt & FmtYCbCr) {
 				fmt.format.ycbcr_enc = ffmt.ycbcr_enc;
-			if (set_fmt & FmtQuantization)
+				fmt.format.flags |= V4L2_MBUS_FRAMEFMT_SET_CSC;
+			}
+			if (set_fmt & FmtQuantization) {
 				fmt.format.quantization = ffmt.quantization;
+				fmt.format.flags |= V4L2_MBUS_FRAMEFMT_SET_CSC;
+			}
 
 			if (options[OptSetSubDevFormat])
 				printf("Note: --set-subdev-fmt is only for testing.\n"
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
