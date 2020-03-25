Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FEB19329E
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rF3u3ZBYGbEsHUHaJ6JfTGQxCgjlVwuYOc5a42g3CzQ=; b=H02nttj4jG2La5
	DiEIt7LSzkMogX+4AXRcHaIpIDBx+qLaPrIsn1/HIojIMtmL/rBspz1ae7gveNi26P++j/x4LJdmf
	X//b7jtABoXxFZsrgo4jHHFoPKOKu/xCfG+ai+9hmBMrSnlUSF2/Hwb2bsyG+jmhujLTbtQ2M8AO/
	qudvym6od+HKgArTXymOIMg0TrGCAUhdiEfWRJNPUCXQii5CpVURBBOSCVHEv0QlMggZG/3RVHo3P
	3pnQMBz9iz3k9C0IbgxJwjXLr7U1REalPazfyE4MPiqrIa8UazAApQED5CuZkS5zZGQh3Ve5Y80+V
	rLDtoUJ55qtvQPZF3jzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDYX-00040X-9K; Wed, 25 Mar 2020 21:27:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDYU-0003zK-Eg
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:27:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 06C51293A21
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 0/2] media: staging: rkisp1: Fix formats for metadata pads
Date: Wed, 25 Mar 2020 22:27:02 +0100
Message-Id: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_142718_622601_27EA04B8 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There are 4 pads between the entities
rkisp1_isp, rkisp1_params, rkisp1_stats that transmit
metadata. Since metadata has no dimensions, it makes
sense to set the width and height of these pads to 0.
The problem is that it makes the v4l-compliance tests fail.
Currently, in order to silent the tests, the width
and height are set to RKISP1_DEFAULT_*

This patchset sets the dimensions to 0 and solves the
compliance error by introducing a new flag
MEDIA_PAD_FL_METADATA in media.h and setting
this flag to those pads.
Then the v4l2-compliance tests can skip the
dimensions test if this flag is set.

This is just a suggested implementation from Laurent,
a better documentation is probably needed.
Another possible solution suggested by Verkuil
is to add a new media bus format: MEDIA_BUS_FMT_FIXED_METADATA.

- patch 1: introduces the the flag
- patch 2: set the flag to the pads and removes a related TODO item

A corresponding patch to v4l-utils will be sent.


Dafna Hirschfeld (2):
  media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
  media: staging: rkisp1: add the flag MEDIA_PAD_FL_METADATA to the
    metadata pads

 Documentation/media/uapi/mediactl/media-types.rst |  4 ++++
 drivers/staging/media/rkisp1/TODO                 |  1 -
 drivers/staging/media/rkisp1/rkisp1-isp.c         | 10 ++++++----
 drivers/staging/media/rkisp1/rkisp1-params.c      |  2 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c       |  2 +-
 include/uapi/linux/media.h                        |  1 +
 6 files changed, 13 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
