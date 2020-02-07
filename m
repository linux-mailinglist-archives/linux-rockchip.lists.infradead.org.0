Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE2F15541D
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 10:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sJaxQJmq9R286l5Yl0rkOGsJIeSqDpweputmZ3pcOfA=; b=Bl0
	D+znsoOJ9Q8Zvv/wvisCyFL/jdmwsBoM3UZZ/hECvUXxtf4mT6T1vVlM8GQ7Xrc6LJc5Kg/UJ7YXs
	exUc4cG6I7+1biyNrqBprYLkgt0fwTy/XtHtAcAarMEXjtqOC7EooQGXUK0EAzvGarxfeJ7iBemc3
	/ND1AcBl1O9AlmyKrYCCUwhJZkerJF5gVit+R7pq6O9dfynUrufMQYLxlidnINkYmFFmYv1TBUXYB
	tYnE+vt8QAiLt5XmWUS+T5n4wlf7c2pu1t5pOd0XcasLihWywWvWzOcdwXv74nE2hCifDxyjDGiwJ
	+qxY0QiK+PgyAZrhRSPxOMUGsXNJnuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzUi-00059Q-W3; Fri, 07 Feb 2020 09:00:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzUf-0004g1-R7
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 09:00:11 +0000
Received: from localhost.localdomain
 (p200300CB87166A00301E621E2266094E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:301e:621e:2266:94e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 468AE295A80;
 Fri,  7 Feb 2020 09:00:04 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/4] media: staging: rkisp1: add serialization to the isp and
 resizer ops
Date: Fri,  7 Feb 2020 09:59:47 +0100
Message-Id: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010010_013030_65F01115 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Subdevices' ops callbacks can be called either through uAPI with
ioctl or through kAPI with the v4l2_subdev_call macro. Therefore
the lock of the subdevice node is not set and instead the driver
itself is responsible for serializing the ops.
This patchset adds serialization to the isp and resizer subdevices.
A mutex field 'ops_lock' is added to the inner struct of each of them.

The ops_lock is then used in the following operations:

set_fmt, get_fmt, set_selection, get_selection, s_stream

Serialization for enum_mbus_code is not needed since this operation
is independent of the specific configuration.

Patches summary:

patch 1 Changes two functions that return int to return void
        and removes a redundant check of error since the functions don't fail.

patch 2 moves the check that the bus type is DPHY before initializing registers
        in the s_stream callback of the isp.

patch 3 adds serialization for the isp subdevice.

patch 4 adds serialization for the resizer subdevice.


Dafna Hirschfeld (4):
  media: staging: rkisp1: change function to return void instead of int
  media: staging: rkisp1: isp: check for dphy bus before initializations
    in s_stream
  media: staging: rkisp1: add serialization to the isp subdev ops
  media: staging: rkisp1: add serialization to the resizer subdev ops

 drivers/staging/media/rkisp1/rkisp1-common.h  |  3 ++
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 51 ++++++++++---------
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 16 +++++-
 3 files changed, 45 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
