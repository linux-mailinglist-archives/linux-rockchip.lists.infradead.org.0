Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989D11C5735
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 May 2020 15:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6qsRL8hJPvaBU11x19/q+uS+J+ITNZHNmNTyAF9i76s=; b=HnK4UIO4MS7w3T
	YDdC6OP3vDCbiN6A2ADBCb9OWpziynJZk6/BycDW8bGiS+kCrEiMPVVQ7jk46i1HremnloV2Wmrtd
	E2WSMAE+8nc+sfMwftN7UybzO9G8EQWxshrKteQDv5HQS27fCQTxZsNFByID+VaSDBuPpA/wiMpYM
	fuIUobUQcGlrST1JMRmIlWD/KKB6hgCYfRYyVTeV4Qbv5/sdwgQW8ga7rs4Ot9SZGZ1Uf+hsBS/ya
	t17hNWOxxHzL/0L/1G00HET3fUoQ/c0bU3Kvm/dnI51YCjPnHSN7kqWiutcJpx1h4QRPV9/BDPuDY
	aRDb6zrPabGOefpAE+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxp7-0003G1-TT; Tue, 05 May 2020 13:41:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxp4-0003EZ-D1
 for linux-rockchip@lists.infradead.org; Tue, 05 May 2020 13:41:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id ED3432A085A
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] media: rkvdec: Add a VP9 backend
Date: Tue,  5 May 2020 10:41:07 -0300
Message-Id: <20200505134110.3435-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_064122_570799_9548A1B9 
X-CRM114-Status: UNSURE (   9.42  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, gustavo.padovan@collabora.com,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Third iteration of the VP9 stateless codec uAPI, plus
support for Rockchip VDEC.

This series addresses an issue I found while testing,
not sure how it slipped before! See patch 1.

Keep in mind the same issue should likely be fixed
on Hantro and Cedrus. We can create a helper for it
as a follow-up.

Other than that, minor documentation and smatch-detected
warnings are fixed.

Thanks!
Ezequiel

Changelog
---------

v3:

* Fix documentation issues found by Hans.
* Fix smatch detected issues as pointed out by Hans.
* Added patch to fix wrong bytesused set on .buf_prepare.

v2:

* Documentation style issues pointed out by Nicolas internally.
* s/VP9_PROFILE_MAX/V4L2_VP9_PROFILE_MAX/
* Fix wrong kfree(ctx).
* constify a couple structs on rkvdec-vp9.c

Boris Brezillon (2):
  media: uapi: Add VP9 stateless decoder controls
  media: rkvdec: Add the VP9 backend

Ezequiel Garcia (1):
  media: rkvdec: Fix .buf_prepare

 .../userspace-api/media/v4l/biblio.rst        |   10 +
 .../media/v4l/ext-ctrls-codec.rst             |  581 ++++++
 drivers/media/v4l2-core/v4l2-ctrls.c          |  242 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1577 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   66 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |    1 +
 include/media/vp9-ctrls.h                     |  510 ++++++
 10 files changed, 2991 insertions(+), 5 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
 create mode 100644 include/media/vp9-ctrls.h

-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
